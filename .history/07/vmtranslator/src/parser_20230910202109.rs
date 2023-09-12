use std::fs;

use crate::VmTranslator;
use crate::CommandType;

pub fn read_instructions(config: &VmTranslator) -> Result<Vec<String>, std::io::Error> {
    let lines = fs::read_to_string(&config.input_file)?
        .lines()
        .map(String::from)
        .map(|s| s.trim().to_string()) // Trim whitespaces
        .map(|s| remove_comments(&s)) // Remove comments
        .filter(|s| s.len() > 0) // Filter out empty lines
        .collect();

    Ok(lines)
}

// Returns a new string with the comment removed
fn remove_comments(s: &str) -> String {
    let offset = s.find("//").unwrap_or(s.len());
    let mut new = s.to_string();
    new.truncate(offset);
    new
}

pub fn split_instructions(instructions: &[String]) -> Vec<Vec<&str>> {
    let mut instrs: Vec<Vec<&str>> = Vec::new();

    for instr in instructions.iter() {
        let parts: Vec<&str> = instr.split(' ').collect();
        instrs.push(parts);
    }

    instrs
}

pub fn command_type(instruction: &str) -> Option<CommandType> {
    match instruction {
        "add" => Some(CommandType::Arithmetic),
        "sub" => Some(CommandType::Arithmetic),
        "neg" => Some(CommandType::Arithmetic),
        "eq" => Some(CommandType::Arithmetic),
        "gt" => Some(CommandType::Arithmetic),
        "lt" => Some(CommandType::Arithmetic),
        "and" => Some(CommandType::Arithmetic),
        "or" => Some(CommandType::Arithmetic),
        "not" => Some(CommandType::Arithmetic),
        "push" => Some(CommandType::Push),
        "pop" => Some(CommandType::Pop),
        "return" => Some(CommandType::Return),
        "function" => Some(CommandType::Function),
        "call" => Some(CommandType::Call),
        "goto" => Some(CommandType),
        // TODO: the rest of the commands
        _ => None
    }
}
