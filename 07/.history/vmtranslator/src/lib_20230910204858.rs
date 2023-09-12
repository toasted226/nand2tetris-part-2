use std::{path::Path, error::Error};
use std::fs::metadata;

use parser::{split_instructions, command_type};

mod parser;
mod codewriter;

pub struct VmTranslator {
    input: SourceType,
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
        let md = match metadata(input) {
            Ok(md) => md,
            Err(_) => return Err("Not a valid file or directory"),
        };
        let input_source: SourceType;
        if md.is_file() {
            let file_name = Path::new(&input)
                .file_stem()
                .expect("Should not fail to convert OsStr")
                .to_str()
                .expect("Should not fail to convert to str");
            let 
        }

        Ok(Self { input, output_file: String::new(), logical_count: 0 })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        let instructions = parser::read_instructions(self)?;

        codewriter::write_commands(&instructions, self)?;

        Ok(())
    }
}
