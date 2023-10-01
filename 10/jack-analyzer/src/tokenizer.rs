use std::num::ParseIntError;
use regex::Regex;

#[derive(Debug, PartialEq)]
pub enum TokenType {
    Keyword,
    Symbol,
    Identifier,
    IntConst,
    StringConst,
}

#[derive(Debug, PartialEq)]
pub enum Keyword {
    Class,
    Method,
    Function,
    Constructor,
    Int,
    Boolean,
    Char,
    Void,
    Var,
    Static,
    Field,
    Let,
    Do,
    If,
    Else,
    While,
    Return,
    True,
    False,
    Null,
    This
}

pub struct Tokenizer {
    pub tokens: Vec<String>,
    current_token: String,
    current_index: usize,
}

impl Tokenizer {
    pub fn tokenize(lines: &[String]) -> Result<Self, &'static str> {
        let rex = r#"([0-9]+)|(".*?")|([a-zA-Z][a-zA-Z0-9_]*)|(\{)|(\})|(\[)|(\])|(\()|(\))|(\+)|(\-)|(\*)|(/)|(;)|(,)|(\.)|(=)|(<)|(>)|(&)|(\|)|(~)"#;
        let re = Regex::new(&rex).unwrap();

        let mut tokens: Vec<String> = Vec::new();
        let first_token: String;

        for line in lines.iter() {
            for match_str in re.find_iter(line) {
                tokens.push(match_str.as_str().to_string());
            }
        }

        if tokens.len() == 0 {
            return Err("Did not parse any tokens");
        } else {
            first_token = tokens[0].clone();
        }

        Ok(Self { tokens, current_token: first_token, current_index: 0 })
    }

    pub fn has_more_tokens(&self) -> bool {
        return if self.current_index < self.tokens.len() - 1 {
            true
        } else {
            false
        }
    }

    pub fn advance(&mut self) {
        if self.has_more_tokens() {
            self.current_index += 1;
            self.current_token = self.tokens[self.current_index].clone();
        }
    }

    pub fn token_type(&self) -> Option<TokenType> {
        let token = self.current_token.as_str();

        match token {
            // Keywords
            "class" => return Some(TokenType::Keyword),
            "constructor" => return Some(TokenType::Keyword),
            "function" => return Some(TokenType::Keyword),
            "method" => return Some(TokenType::Keyword),
            "field" => return Some(TokenType::Keyword),
            "static" => return Some(TokenType::Keyword),
            "var" => return Some(TokenType::Keyword),
            "int" => return Some(TokenType::Keyword),
            "char" => return Some(TokenType::Keyword),
            "boolean" => return Some(TokenType::Keyword),
            "void" => return Some(TokenType::Keyword),
            "true" => return Some(TokenType::Keyword),
            "false" => return Some(TokenType::Keyword),
            "null" => return Some(TokenType::Keyword),
            "this" => return Some(TokenType::Keyword),
            "let" => return Some(TokenType::Keyword),
            "do" => return Some(TokenType::Keyword),
            "if" => return Some(TokenType::Keyword),
            "else" => return Some(TokenType::Keyword),
            "while" => return Some(TokenType::Keyword),
            "return" => return Some(TokenType::Keyword),
            // Symbols
            "{" => return Some(TokenType::Symbol),
            "}" => return Some(TokenType::Symbol),
            "(" => return Some(TokenType::Symbol),
            ")" => return Some(TokenType::Symbol),
            "[" => return Some(TokenType::Symbol),
            "]" => return Some(TokenType::Symbol),
            "." => return Some(TokenType::Symbol),
            "," => return Some(TokenType::Symbol),
            ";" => return Some(TokenType::Symbol),
            "+" => return Some(TokenType::Symbol),
            "-" => return Some(TokenType::Symbol),
            "*" => return Some(TokenType::Symbol),
            "/" => return Some(TokenType::Symbol),
            "&" => return Some(TokenType::Symbol),
            "|" => return Some(TokenType::Symbol),
            "<" => return Some(TokenType::Symbol),
            ">" => return Some(TokenType::Symbol),
            "=" => return Some(TokenType::Symbol),
            "~" => return Some(TokenType::Symbol),
            // Has to be something else then
            "" => return None,
            _ => {},
        }

        if token.parse::<u16>().is_ok() {
            return Some(TokenType::IntConst);
        }

        let re = match Regex::new(r"^[a-zA-Z][a-zA-Z0-9_]*?$") {
            Ok(re) => re,
            Err(_) => return None,
        };
        if re.is_match(token) {
            return Some(TokenType::Identifier);
        }

        let mut chars = token.chars();
        let first_char = chars.next().unwrap();
        let last_char = chars.last().unwrap();
        if first_char == '"' && last_char == '"' && token.len() > 1 {
            return Some(TokenType::StringConst);
        }

        None
    }

    pub fn keyword(&self) -> Option<Keyword> {
        let token = self.current_token.as_str();

        match token {
            "class" => Some(Keyword::Class),
            "method" => Some(Keyword::Method),
            "function" => Some(Keyword::Function),
            "constructor" => Some(Keyword::Constructor),
            "int" => Some(Keyword::Int),
            "boolean" => Some(Keyword::Boolean),
            "char" => Some(Keyword::Char),
            "void" => Some(Keyword::Void),
            "var" => Some(Keyword::Var),
            "static" => Some(Keyword::Static),
            "field" => Some(Keyword::Field),
            "let" => Some(Keyword::Let),
            "do" => Some(Keyword::Do),
            "if" => Some(Keyword::If),
            "else" => Some(Keyword::Else),
            "while" => Some(Keyword::While),
            "return" => Some(Keyword::Return),
            "true" => Some(Keyword::True),
            "false" => Some(Keyword::False),
            "null" => Some(Keyword::Null),
            "this" => Some(Keyword::This),
            _ => None,
        }
    }

    pub fn symbol(&self) -> char {
        self.current_token.chars().next().unwrap()
    }

    pub fn identifier(&self) -> &str {
        self.current_token.as_str()
    }

    pub fn int_val(&self) -> Result<u16, ParseIntError> {
        Ok(self.current_token.parse::<u16>()?)
    }

    pub fn string_val(&self) -> &str {
        let mut chars = self.current_token.chars();
        chars.next();
        chars.next_back();
        chars.as_str()
    }
}

#[cfg(test)]
mod tokenizer_tests {
    use super::*;
    #[test]
    fn test_tokenizer() {
        let t: Tokenizer = Tokenizer::tokenize(&vec![String::from("constructor Point new(int x, int y) {")]).unwrap();
        assert_eq!(t.tokens, vec![
            String::from("constructor"),
            String::from("Point"),
            String::from("new"),
            String::from("("),
            String::from("int"),
            String::from("x"),
            String::from(","),
            String::from("int"),
            String::from("y"),
            String::from(")"),
            String::from("{"),
        ]);
    }

    #[test]
    fn test_advance() {
        let mut t = Tokenizer::tokenize(&vec![String::from("let x = 1;")]).unwrap();
        assert_eq!(t.current_token, String::from("let"));
        t.advance(); // x
        assert_eq!(t.current_token, String::from("x"));
        t.advance(); // =
        assert_eq!(t.current_token, String::from("="));
        t.advance(); // 1
        assert_eq!(t.current_token, String::from("1"));
        t.advance(); // ;
        t.advance(); // Should stay the same
        t.advance(); // Should still remain the same
        assert_eq!(t.current_token, String::from(";"));
    }

    #[test]
    fn test_token_type() {
        let mut t = Tokenizer::tokenize(&vec![String::from("let 23 var_name \"text\"")]).unwrap();
        assert_eq!(t.token_type(), Some(TokenType::Keyword));
        t.advance();
        assert_eq!(t.token_type(), Some(TokenType::IntConst));
        t.advance();
        assert_eq!(t.token_type(), Some(TokenType::Identifier));
        t.advance();
        assert_eq!(t.token_type(), Some(TokenType::StringConst));
    }

    #[test]
    fn test_keyword() {
        let mut t = Tokenizer::tokenize(&vec![String::from("class method function let return")]).unwrap();
        assert_eq!(t.keyword(), Some(Keyword::Class));
        t.advance();
        assert_eq!(t.keyword(), Some(Keyword::Method));
        t.advance();
        assert_eq!(t.keyword(), Some(Keyword::Function));
        t.advance();
        assert_eq!(t.keyword(), Some(Keyword::Let));
        t.advance();
        assert_eq!(t.keyword(), Some(Keyword::Return));
    }

    #[test]
    fn test_int_val() {
        let t = Tokenizer::tokenize(&vec![String::from("12345")]).unwrap();
        assert_eq!(t.token_type(), Some(TokenType::IntConst));
        assert_eq!(t.int_val().unwrap(), 12345);
    }

    #[test]
    fn test_string_val() {
        let t = Tokenizer::tokenize(&vec![String::from("\"text\"")]).unwrap();
        assert_eq!(t.token_type(), Some(TokenType::StringConst));
        assert_eq!(t.string_val(), "text");
    }

    #[test]
    fn test_identifier_symbol() {
        let mut t = Tokenizer::tokenize(&vec![String::from("x +")]).unwrap();
        assert_eq!(t.identifier(), "x");
        t.advance();
        assert_eq!(t.symbol(), '+');
    }
}