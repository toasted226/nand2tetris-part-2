use std::{path::Path, error::Error};

use parser::{split_instructions, command_type};

mod parser;
mod codewriter;

pub struct VmTranslator {
    input_file: String,
    file_name: String,
    output_string: String,
    logical_count: u32,
}

#[derive(PartialEq)]
pub enum CommandType {
    Arithmetic,
    Push,
    Pop,
    Label,
    Goto,
    If,
    Function,
    Return,
    Call
}

impl VmTranslator {
    pub fn new(args: &[String]) -> Result<Self, &'static str> {
        if args.len() < 2 {
            return Err("Not enough arguments");
        }

        let input_file = args[1].clone();
        let pathbuf = Path::new(&input_file).with_extension("");
        let filename = pathbuf.to_str().unwrap();
        let file_name = filename.to_string();
        let output_file = String::from(filename.to_owned() + ".asm");

        Ok(Self { input_file, file_name, output_string: String::new(), logical_count: 0 })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        let instructions = parser::read_instructions(self)?;

        codewriter::write_commands(&instructions, self)?;

        Ok(())
    }
}
