use std::{path::Path, error::Error};
use std::fs::metadata;

use parser::{split_instructions, command_type};

mod parser;
mod codewriter;

pub struct VmTranslator {
    input: SourceType,
    file_name: String,
    output_file: String,
    logical_count: u32,
}

pub enum SourceType {
    File(String),
    Directory(Vec<String>),
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

        let input = args[1].clone();

        // Check whether the input is a file or directory
        let md = metadata(input).unwrap_or_else(|_| {
            return Err("Not a valid file or directory");
        })

        Ok(Self { input, file_name, output_file: String::new(), logical_count: 0 })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        let instructions = parser::read_instructions(self)?;

        codewriter::write_commands(&instructions, self)?;

        Ok(())
    }
}
