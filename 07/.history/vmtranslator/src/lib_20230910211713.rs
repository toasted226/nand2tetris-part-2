use std::{path::Path, error::Error};
use std::fs::{metadata, self};

use parser::{split_instructions, command_type};

mod parser;
mod codewriter;

pub struct VmTranslator {
    input_source: SourceType,
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
            // Is a file
            let file_name = get_file_name(&input)?;
            input_source = SourceType::File(format!("{file_name}.vm"));
            output_file = String::from(format!("{file_name}.asm"));
        } else if md.is_dir() {
            // Is a directory
            let paths = match fs::read_dir(&input) {
                Ok(paths) => paths,
                Err(e) => return Err(format!("Failed to read directory: {e}").as_str()),
            };
            
            for path in paths {
                // Skip if path invalid
                if path.is_err() {continue;}
                if path.unwrap().metadata().unwrap().is_file() {
                    
                } else {
                    continue;
                }
            }
        } else {
            return Err("Not a valid file or directory");
        }

        Ok(Self { input_source, output_file, logical_count: 0 })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        let instructions = parser::read_instructions(self)?;

        codewriter::write_commands(&instructions, self)?;

        Ok(())
    }
}

fn get_file_name(input: &str) -> Result<&str, &'static str> {
    let file_name = Path::new(&input)
        .file_stem()
        .expect("Should not fail to convert OsStr")
        .to_str()
        .expect("Should not fail to convert to str");
    if Path::new(&input).extension().unwrap().to_str().unwrap() != "vm" {
        return Err("File must have the extension *.vm");
    }
    Ok(file_name)
}
