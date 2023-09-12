use std::{path::Path, error::Error};
use std::fs::{metadata, self};

use parser::{split_instructions, command_type};

mod parser;
mod codewriter;

pub struct VmTranslator {
    input_files: Vec<String>,
    file_name: String,
    output_file: String,
}

pub struct File {
    file_path: String,
    file_name: String,
    output_file: String,
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

        let input = args[1].clone();

        // Check whether the input is a file or directory
        let md = match metadata(input) {
            Ok(md) => md,
            Err(_) => return Err("Not a valid file or directory"),
        };

        let mut input_files = Vec::<String>::new();
        let file_name: String;
        let output_file: String;

        if md.is_file() {
            // Is a file
            let fname = get_file_name(&input)?;
            input_files.push(format!("{file_name}.vm"));
            file_name = fname.to_string();
            output_file = String::from(format!("{file_name}.asm"));
        } else if md.is_dir() {
            // Is a directory
            let paths = match fs::read_dir(&input) {
                Ok(paths) => paths,
                Err(e) => return Err(format!("Failed to read directory: {e}").as_str()),
            };
            
            let mut files: Vec<String> = Vec::new();
            // For each path
            for path in paths {
                // Skip if path invalid
                if path.is_err() {continue;}
                if path.unwrap().metadata().unwrap().is_file() {
                    let fname = path.unwrap().file_name().to_str().expect("Should not fail to convert OsStr");
                    let fname = get_file_name(fname)?;
                    files.push(file_name.to_string());
                } else {
                    continue;
                }
            }
            // Check if folder had no *.vm files
            if files.is_empty() {
                return Err("Could not find any *.vm files");
            } else {
                let dir = Path::new(&input)
                    .file_name()
                    .expect("Should not fail to get directory name")
                    .to_str()
                    .expect("Should not fail to convert OsStr");
                output_file = format!("{dir}/{dir}.asm");
                file_name = dir.to_string();
                input_files.append(&mut files);
            }
        } else {
            return Err("Not a valid file or directory");
        }

        Ok(Self { input_files, file_name, output_file })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        // TODO: Handle File struct creation
        if self.input_files.len() > 0 {
        let instructions = parser::read_instructions(self)?;

        codewriter::write_commands(&instructions, self)?;
        }

        Ok(())
    }
}

fn get_file_name(input: &str) -> Result<&str, &'static str> {
    let file_name = Path::new(&input)
        .file_stem()
        .expect("Should not fail to get file stem")
        .to_str()
        .expect("Should not fail to convert to str");
    if Path::new(&input).extension().unwrap().to_str().unwrap() != "vm" {
        return Err("File must have the extension *.vm");
    }
    Ok(file_name)
}
