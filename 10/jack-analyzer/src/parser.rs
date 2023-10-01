use std::error::Error;
use std::fs;
use regex::Regex;

pub fn read_lines(filepath: &str) -> Result<Vec<String>, Box<dyn Error>> {
    let text = fs::read_to_string(filepath)?;
    let lines = remove_comments(&text)
        .lines()
        .map(String::from)
        .map(|s| remove_inline_comments(&s)) // Remove comments
        .map(|s| s.trim().to_string()) // Trim whitespaces
        .filter(|s| s.len() > 0) // Filter out empty lines
        .collect();

    Ok(lines)
}

fn remove_comments(s: &str) -> String {
    let re = Regex::new(r"(/\*[\S\s]*?\*/)").unwrap();
    re.replace_all(s, "").to_string()
}

fn remove_inline_comments(s: &str) -> String {
    let offset = s.find("//").unwrap_or(s.len());
    let mut new = s.to_string();
    new.truncate(offset);
    new
}

#[cfg(test)]
mod parser_tests {
    use super::*;
    #[test]
    fn test_comments_removed() {
        let s = "here is some text and // other comments";
        let edit = remove_inline_comments(s);
        assert_eq!(edit, String::from("here is some text and "));
    }

    #[test]
    fn test_comments_removed_2() {
        let s = "/*\ncheese\n*/\nclass /* more cheese */MyClass {";
        let edit = remove_comments(s);
        assert_eq!(edit, String::from("\nclass MyClass {"));
    }
}