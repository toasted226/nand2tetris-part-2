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
    current_function: String,
    logical_count: u32,
    call_count: u32,
}

#[derive(PartialEq, Debug)]
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
        let md = match metadata(&input) {
            Ok(md) => md,
            Err(_) => return Err("Not a valid file or directory"),
        };

        let mut input_files = Vec::<String>::new();
        let file_name: String;
        let output_file: String;

        if md.is_file() {
            // Is a file
            let fname = get_file_name(&input)?;
            input_files.push(format!("{fname}.vm"));
            file_name = fname.to_string();
            output_file = String::from(format!("{file_name}.asm"));
        } else if md.is_dir() {
            // Is a directory
            let paths = match fs::read_dir(&input) {
                Ok(paths) => paths,
                Err(_) => return Err("Failed to read directory"),
            };

            // Get name of directory
            let dir = Path::new(&input)
                .file_name()
                .expect("Should not fail to get directory name")
                .to_str()
                .expect("Should not fail to convert OsStr");
            output_file = format!("{dir}/{dir}.asm");
            file_name = dir.to_string();

            // For each path
            for path in paths {
                // Skip if path invalid
                if path.is_err() {continue;}
                // Add file to list
                if path.as_ref().unwrap().metadata().unwrap().is_file() {
                    let path_fname = path.unwrap().file_name();
                    let fname = path_fname.to_str().expect("Should not fail to convert OsStr");
                    let fname = match get_file_name(fname) {
                        Ok(name) => name,
                        Err(_) => continue,
                    };
                    input_files.push(format!("{dir}/{}.vm", fname.to_string()));
                } else {
                    continue;
                }
            }

            // Validate that input files is not empty
            if input_files.len() == 0 {
                return Err("No *.vm files found");
            }
        } else {
            return Err("Not a valid directory");
        }

        Ok(Self { input_files, file_name, output_file })
    }

    pub fn translate(&mut self) -> Result<(), Box<dyn Error>> {
        let mut final_code = String::new();
        let finished_init = false;

        for input in self.input_files.iter() {
            let mut file = File {
                file_path: input.to_string(),
                file_name: self.file_name.clone(),
                current_function: String::new(),
                logical_count: 0,
                call_count: 0
            };

            let instructions = parser::read_instructions(&mut file)?;

            final_code.push_str(&codewriter::write_init(&mut file));
            let code = codewriter::translate_commands(&instructions, &mut file)?;
            final_code.push_str(&code);
        }

        codewriter::write_to_file(&final_code, &self.output_file)?;

        Ok(())
    }
}

fn get_file_name(input: &str) -> Result<String, &'static str> {
    let file_name = Path::new(&input)
        .file_stem()
        .expect("Should not fail to get file stem")
        .to_str()
        .expect("Should not fail to convert to str")
        .to_string();
    if Path::new(&input).extension().unwrap().to_str().unwrap() != "vm" {
        return Err("File must have the extension *.vm");
    }
    Ok(file_name)
}
