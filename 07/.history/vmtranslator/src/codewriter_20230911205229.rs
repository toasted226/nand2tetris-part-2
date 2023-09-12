use std::error::Error;
use std::fs::File;

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
        } else {
            // TODO: Handle return commands
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
            _ => String::new()
        };

        code.push_str(&format!("{}\n", assembly));
    }

    Ok(code)
}

pub fn write_to_file(code: &str, file_path: &str) -> Result<(), Box<dyn Error>> {
    let file = File::create(&file_path)?;
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
    let filename = &config.file_name;
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
            config.file_name);
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
            config.file_name);
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
