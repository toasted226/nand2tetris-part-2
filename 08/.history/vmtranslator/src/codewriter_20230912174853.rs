use std::error::Error;
use std::fs::File;
use std::io::{BufWriter, Write};

use crate::CommandType;

pub fn translate_commands(instructions: &[String], config: &mut crate::File) -> Result<String, Box<dyn Error>> {
    let mut code = String::new();

    for instr in crate::split_instructions(instructions).iter() {
        let command_type = crate::command_type(instr[0]).expect("Expected a valid command");
        let mut arg1: String = String::new();
        let mut arg2: u16 = 0;

        if command_type != CommandType::Return {
            if command_type == CommandType::Arithmetic {
                arg1 = instr[0].to_string();
            } else {
                arg1 = instr[1].to_string();
            }
        }

        if command_type == CommandType::Push || 
            command_type == CommandType::Pop || 
            command_type == CommandType::Function || 
            command_type == CommandType::Call {
            arg2 = instr[2].to_string().parse::<u16>().expect("Expected an unsigned 16-bit integer");
        }

        let assembly = match command_type {
            CommandType::Arithmetic => write_arithmetic(&arg1, config),
            CommandType::Push|CommandType::Pop => write_push_pop(&command_type, &arg1, arg2, config),
            CommandType::Label => write_label(&arg1, config),
            CommandType::Goto => write_goto(&arg1, config),
            CommandType::If => write_if(&arg1, config),
            CommandType::Function => write_function(&arg1, arg2, config),
            CommandType::Call => write_call(&arg1, arg2, config),
            CommandType::Return => write_return(),
        };

        code.push_str(&format!("{}\n", assembly));
    }

    Ok(code)
}

pub fn write_to_file(code: &str, file_path: &str) -> Result<(), Box<dyn Error>> {
    let file = File::create(&file_path)?;
    let mut file = BufWriter::new(file);
    file.write_all(code.as_bytes())?;
    Ok(())
}

pub fn write_init(config: &mut crate::File) -> String {
    let init_code = write_call("Sys.init", 0, config);
    String::from(format!("// init
    @256
    D=A
    @SP
    A=M
    M=D
{init_code}\n"))
}

pub fn write_arithmetic(command: &str, config: &mut crate::File) -> String {
    let assembly: String;
    let operation = match command {
        "add" => "D=D+M",
        "sub" => "D=M-D",
        "and" => "D=D&M",
        "or" => "D=D|M",
        "neg" => "D=-M",
        "not" => "D=!M",
        _ => command
    };
    let filename = &config.class_name;
    let count = config.logical_count;

    if command == "add" || command == "sub" || command == "and" || command == "or" {
        assembly = format!("// {command}
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    {operation}
    @SP
    A=M
    M=D
    @SP
    M=M+1");
    } else if command == "neg" || command == "not" {
        assembly = format!("// {command}
    @SP
    M=M-1
    A=M
    {operation}
    @SP
    A=M
    M=D
    @SP
    M=M+1");
    } else if command == "eq" {
        assembly = format!("// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @{filename}_EQ_{count}
    D;JEQ
    D=0
    @{filename}_STK_UPDATE_{count}
    0;JMP
({filename}_EQ_{count})
    D=-1
({filename}_STK_UPDATE_{count})
    @SP
    A=M
    M=D
    @SP
    M=M+1");
    } else if command == "gt" {
        assembly = format!("// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @{filename}_GT_{count}
    D;JGT
    D=0
    @{filename}_STK_UPDATE_{count}
    0;JMP
({filename}_GT_{count})
    D=-1
({filename}_STK_UPDATE_{count})
    @SP
    A=M
    M=D
    @SP
    M=M+1");
    } else if command == "lt" {
        assembly = format!("// eq
    @SP
    M=M-1
    A=M
    D=M
    @SP
    M=M-1
    A=M
    D=M-D
    @{filename}_LT_{count}
    D;JLT
    D=0
    @{filename}_STK_UPDATE_{count}
    0;JMP
({filename}_LT_{count})
    D=-1
({filename}_STK_UPDATE_{count})
    @SP
    A=M
    M=D
    @SP
    M=M+1");
    } else {
        assembly = String::new();
    }

    config.logical_count += 1;

    assembly
}

pub fn write_push_pop(command: &CommandType, arg1: &str, arg2: u16, config: &crate::File) -> String {
    let assembly: String;
    let segment = match arg1 {
        "local" => "LCL",
        "argument" => "ARG",
        "this" => "THIS",
        "that" => "THAT",
        "pointer" if arg2 == 0 => "THIS",
        "pointer" if arg2 == 1 => "THAT",
        _ => arg1
    };

    if *command == CommandType::Push {
        if arg1 == "constant" {
            assembly = format!("// push constant {arg2}
    @{arg2}
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1");
        } else if arg1 == "local" || arg1 == "argument" || arg1 == "this" || arg1 == "that" {
            assembly = format!("// push {arg1} {arg2}
    @{arg2}
    D=A
    @{segment}
    D=D+M
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1");
        } else if arg1 == "static" {
            assembly = format!("// push static {arg2}
    @{}.{arg2}
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1",
            config.class_name);
        } else if arg1 == "pointer" {
            assembly = format!("// push pointer {arg2}
    @{segment}
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1");
        } else if arg1 == "temp" {
            assembly = format!("// push temp {arg2}
    @{arg2}
    D=A
    @5
    D=D+A
    @R13
    M=D
    A=M
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1");
        } else {
            assembly = String::new();
        }
    } else if *command == CommandType::Pop {
        if arg1 == "local" || arg1 == "argument" || arg1 == "this" || arg1 == "that" {
            assembly = format!("// pop {arg1} {arg2}
    @{arg2}
    D=A
    @{segment}
    D=D+M
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D");
        } else if arg1 == "static" {
            assembly = format!("// pop static {arg2}
    @SP
    M=M-1
    A=M
    D=M
    @{}.{arg2}
    M=D",
            config.class_name);
        } else if arg1 == "pointer" {
            assembly = format!("// pop pointer {arg2}
    @SP
    M=M-1
    A=M
    D=M
    @{segment}
    M=D");
        } else if arg1 == "temp" {
            assembly = format!("// pop temp {arg2}
    @{arg2}
    D=A
    @5
    D=D+A
    @R13
    M=D
    @SP
    M=M-1
    A=M
    D=M
    @R13
    A=M
    M=D");
        } else {
            assembly = String::new();
        }
    } else {
        assembly = String::new();
    }

    assembly
}

pub fn write_label(label: &str, config: &crate::File) -> String {
    let function = &config.current_function;
    String::from(format!("// label {label}
({function}${label})"))
}

pub fn write_goto(label: &str, config: &crate::File) -> String {
    let function = &config.current_function;
    String::from(format!("// goto {label}
    @{function}${label}
    0;JMP"))
}

pub fn write_if(label: &str, config: &crate::File) -> String {
    let function = &config.current_function;
    String::from(format!("// if-goto {label}
    @SP
    M=M-1
    A=M
    D=M
    @{function}${label}
    D;JNE"))
}

pub fn write_function(function_name: &str, num_vars: u16, config: &mut crate::File) -> String {
    //let filename = &config.file_name;
    config.current_function = function_name.to_string();
    let mut local_inits = String::new();

    let local_init = String::from("// init local 0
    @SP
    A=M
    M=0
    @SP
    M=M+1\n");

    for _ in 0..num_vars {
        local_inits.push_str(&local_init);
    }

    String::from(format!("// function {function_name} {num_vars}
({function_name})
{local_inits}"))
}

pub fn write_call(function_name: &str, num_args: u16, config: &mut crate::File) -> String {
    let call_count = config.call_count;
    config.call_count += 1;

    String::from(format!("// call {function_name} {num_args}
    // push returnAddress
    @{function_name}$ret.{call_count}
    D=A
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push LCL
    @LCL
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push ARG
    @ARG
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THIS
    @THIS
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // push THAT
    @THAT
    D=M
    @SP
    A=M
    M=D
    @SP
    M=M+1
    // ARG = SP - 5 - {num_args}
    @SP
    D=M
    @5
    D=D-A
    @{num_args}
    D=D-A
    @ARG
    M=D
    // LCL = SP
    @SP
    D=M
    @LCL
    M=D
    // goto {function_name}
    @{function_name}
    0;JMP
({function_name}$ret.{call_count})"))
}

pub fn write_return() -> String {
    String::from(format!("// return
    // endframe = LCL
    @LCL
    D=M
    @R14
    M=D
    // retAddr = *(endframe - 5)
    @5
    A=D-A
    D=M
    @R15
    M=D
    // *ARG = pop()
    @SP
    M=M-1
    A=M
    D=M
    @ARG
    A=M
    M=D
    // SP = ARG + 1
    @ARG
    D=M+1
    @SP
    M=D
    // THAT = *(endframe - 1)
    @R14
    D=M-1
    A=D
    D=M
    @THAT
    M=D
    // THIS = *(endframe - 2)
    @R14
    D=M
    @2
    D=D-A
    A=D
    D=M
    @THIS
    M=D
    // ARG = *(endframe - 3)
    @R14
    D=M
    @3
    D=D-A
    A=D
    D=M
    @ARG
    M=D
    // LCL *(endframe - 4)
    @R14
    D=M
    @4
    D=D-A
    A=D
    D=M
    @LCL
    M=D
    // goto retAddr
    @R15
    A=M
    0;JMP"))
}
