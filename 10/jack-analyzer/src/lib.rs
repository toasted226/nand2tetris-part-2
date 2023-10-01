mod tokenizer;
mod compilation_engine;
mod parser;

use std::error::Error;
use std::ffi::OsStr;
use std::fs;
use std::path::{Path, PathBuf};
use crate::compilation_engine::CompilationEngine;
use crate::tokenizer::Tokenizer;

pub struct JackAnalyzer {
    input_files: Vec<String>,
    output_files: Vec<String>,
}

#[derive(Debug)]
pub enum Source {
    File(String),
    Directory(Vec<String>),
}

impl JackAnalyzer {
    pub fn new(args: &[String]) -> Result<Self, &'static str> {
        if args.len() < 2 {
            return Err("Not enough arguments");
        }

        let input= args[1].clone();
        let source = get_source_type(&input)?;
        let mut input_files = Vec::new();

        match source {
            Source::File(path) => input_files.push(path),
            Source::Directory(paths) => input_files = paths,
        }

        let output_files = change_extension(&input_files);

        Ok(Self {input_files, output_files})
    }

    pub fn analyze(&mut self) -> Result<(), Box<dyn Error>> {
        // Parse each file
        for i in 0..self.input_files.len() {
            let file = &self.input_files[i];
            let output_file = &self.output_files[i];

            let lines = parser::read_lines(file)?;
            let mut tokenizer = match Tokenizer::tokenize(&lines) {
                Ok(t) => t,
                Err(e) => panic!("{e}"),
            };
            let mut compilation_engine = CompilationEngine::new(&mut tokenizer);
            let xml = compilation_engine.parse();

            fs::write(output_file, xml)?;
        }

        Ok(())
    }
}

pub fn change_extension(files: &[String]) -> Vec<String> {
    let mut paths = Vec::new();

    for file in files.iter() {
        let mut path = PathBuf::from(file);
        path.set_extension("xml");
        paths.push(path.to_str().unwrap().into());
    }

    paths
}

pub fn get_source_type(input: &str) -> Result<Source, &'static str> {
    let path_buf = Path::new(input);
    let source: Source;
    let mut input_files: Vec<String> = Vec::new();

    if path_buf.is_dir() {
        // Get paths in directory
        let paths = match fs::read_dir(input) {
            Ok(paths) => paths,
            Err(_) => return Err("Failed to read directory"),
        };

        for path in paths {
            if path.is_err() {continue;}
            // Get file name
            let some_bullshit = path.unwrap().file_name();
            let filename = some_bullshit.to_str().unwrap();
            // Skip if file extension is not jack
            if Path::new(filename).extension().and_then(OsStr::to_str).unwrap() != "jack" {
                continue;
            }
            let full_path = format!("{input}/{filename}");
            input_files.push(full_path);
        }

        source = Source::Directory(input_files);
    } else if path_buf.is_file() {
        let path = Path::new(input);
        // Check if file extension is invalid
        if path.extension().and_then(OsStr::to_str).unwrap() != "jack" {
            return Err("The input file must be a *.jack file");
        }
        source = Source::File(input.to_string());
    } else {
        return Err("File/directory does not exist");
    }

    Ok(source)
}

#[cfg(test)]
mod lib_tests {
    use super::*;
    #[test]
    fn test_extension_change() {
        let files = vec![
            String::from("test.jack"),
            String::from("yeet.jack")
        ];

        let changed_files = change_extension(&files);

        assert_eq!(changed_files, vec![
            String::from("test.xml"),
            String::from("yeet.xml")
        ]);
    }
}