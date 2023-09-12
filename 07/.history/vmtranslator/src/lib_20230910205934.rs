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
        let output_file: String;
        if md.is_file() {
            
            input_source = SourceType::File(format!(""))
            output_file = String::from(format!("{file_name}.asm"));
        }

        Ok(Self { input, output_file, logical_count: 0 })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        let instructions = parser::read_instructions(self)?;

        codewriter::write_commands(&instructions, self)?;

        Ok(())
    }
}

fn get_file(input: &str) -> Result<String, &'static str> {
    let file_name = Path::new(&input)
        .file_stem()
        .expect("Should not fail to convert OsStr")
        .to_str()
        .expect("Should not fail to convert to str");
    if Path::new(&input).extension().unwrap().to_str().unwrap() != "vm" {
        return Err("File must have the extension *.vm");
    }
    Ok(format!("{file_name}.vm"))
}