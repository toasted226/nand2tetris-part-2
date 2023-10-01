use crate::tokenizer::{Keyword, Tokenizer, TokenType};
use crate::tokenizer::TokenType::{Identifier, IntConst, StringConst, Symbol};

pub struct CompilationEngine<'a> {
    parsed: String,
    indentation: u16,
    tokenizer: &'a mut Tokenizer,
}

impl<'a> CompilationEngine<'a> {
    pub fn new(tokenizer: &'a mut Tokenizer) -> Self {
        Self {parsed: String::new(), indentation: 0, tokenizer}
    }

    pub fn parse(&mut self) -> &str {
        self.compile_class();
        &self.parsed
    }

    fn indent(&mut self) {
        self.indentation += 2;
    }

    fn unindent(&mut self) {
        self.indentation -= 2;
    }

    fn space(&self) -> String {
        let mut space = String::new();
        for _ in 0..self.indentation {
            space.push(' ');
        }
        space
    }

    /// Writes a tag and advances the tokenizer.
    fn write_tag(&mut self, tag: &str, value: &str) {
        self.parsed.push_str(&format!("{}<{tag}> {value} </{tag}>\n", self.space()));
        self.tokenizer.advance();
    }

    /// Writes a tag without advancing the tokenizer.
    /// Useful when performing look-ahead
    fn write_tag_no_advance(&mut self, tag: &str, value: &str) {
        self.parsed.push_str(&format!("{}<{tag}> {value} </{tag}>\n", self.space()));
    }

    /// Writes an opening tag and indents the next line.
    fn write_tag_open(&mut self, tag: &str) {
        self.parsed.push_str(&format!("{}<{tag}>\n", self.space()));
        self.indent();
    }

    /// Unindents and writes a closing tag
    fn write_tag_close(&mut self, tag: &str) {
        self.unindent();
        self.parsed.push_str(&format!("{}</{tag}>\n", self.space()));
    }

    fn compile_identifier(&mut self) {
        if self.tokenizer.token_type().expect("Expected identifier") == TokenType::Identifier {
            let identifier = self.tokenizer.identifier().to_string();
            self.write_tag("identifier", &identifier);
        } else { panic!("Expected identifier"); }
    }

    fn compile_type(&mut self) {
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == TokenType::Keyword {
            let keyword = self.tokenizer.keyword().expect("Expected primitive data type");
            match keyword {
                Keyword::Int => self.write_tag("keyword", "int"),
                Keyword::Char => self.write_tag("keyword", "char"),
                Keyword::Boolean => self.write_tag("keyword", "boolean"),
                _ => panic!("Expected primitive data type"),
            }
        } else {
            self.compile_identifier();
        }
    }

    fn compile_symbol(&mut self, symbol: char) {
        let token_type = self.tokenizer.token_type().expect("Failed to get token type");
        if token_type == Symbol && self.tokenizer.symbol() == symbol {
            self.write_tag("symbol", &symbol.to_string());
        } else { panic!("Expected symbol '{}'", symbol); }
    }

    fn compile_class(&mut self) {
        // 'class'
        if self.tokenizer.token_type().expect("Expected keyword 'class'") == TokenType::Keyword
            && self.tokenizer.keyword().expect("Expected keyword 'class'") == Keyword::Class {
            // class open
            self.write_tag_open("class");
            self.write_tag("keyword", "class");
        } else {
            panic!("Expected keyword 'class'");
        }

        // className
        self.compile_identifier();

        // {
        self.compile_symbol('{');

        // classVarDec*
        self.compile_class_var_dec();
        // subroutineDec*
        self.compile_subroutine_dec();

        // }
        self.compile_symbol('}');

        // class close
        self.write_tag_close("class");
    }

    fn compile_parameter_list(&mut self) {
        // This should check again at the end if there are more parameters
        // Keyword or Identifier
        let token_type = self.tokenizer.token_type().expect("Parameter list: Failed to get token type");
        if token_type == TokenType::Keyword {

            let keyword = self.tokenizer.keyword().expect("Expected primitive data type");
            match keyword {
                Keyword::Int => self.write_tag("keyword", "int"),
                Keyword::Char => self.write_tag("keyword", "char"),
                Keyword::Boolean => self.write_tag("keyword", "boolean"),
                _ => panic!("Expected primitive data type"),
            }
            // Var name
            self.compile_identifier();
            // Recurse
            self.compile_parameter_list();

        } else if token_type == TokenType::Identifier {

            let identifier = self.tokenizer.identifier().to_string();
            self.write_tag("identifier", &identifier);
            // Var name
            self.compile_identifier();
            // Recurse
            self.compile_parameter_list();

        } else if token_type == Symbol && self.tokenizer.symbol() == ',' {
            self.write_tag("symbol", ",");
            self.compile_parameter_list();
        } else {
            return;
        }
    }

    fn compile_var_list(&mut self) {
        let token_type = self.tokenizer.token_type().expect("Var list: Failed to get token type");
        if token_type == TokenType::Identifier {
            // identifier
            let identifier = self.tokenizer.identifier().to_string();
            self.write_tag("identifier", &identifier);
            self.compile_var_list();
        } else if token_type == Symbol
            && self.tokenizer.symbol() == ',' {
            // ,
            self.write_tag("symbol", ",");
            self.compile_var_list();
        } else {
            return;
        }
    }

    fn compile_class_var_dec(&mut self) {
        // This should check again at the end if there are more classVarDec's
        // 'static' | 'field'
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == TokenType::Keyword
            && self.tokenizer.keyword().unwrap() == Keyword::Field
            || token_type == TokenType::Keyword
            && self.tokenizer.keyword().unwrap() == Keyword::Static {
            // classVarDec open
            self.write_tag_open("classVarDec");
            match self.tokenizer.keyword().unwrap() {
                Keyword::Field => self.write_tag("keyword", "field"),
                Keyword::Static => self.write_tag("keyword", "static"),
                _ => panic!("Class var dec: Invalid keyword"),
            }

            // type
            self.compile_type();

            // Variable declarations
            self.compile_var_list();

            // ;
            self.compile_symbol(';');

            // classVarDec close
            self.write_tag_close("classVarDec");
            self.compile_class_var_dec();
        }
    }

    fn compile_subroutine_dec(&mut self) {
        // This should check again at the end if there are any other subroutineDec's
        // Return if not a keyword
        let token_type = self.tokenizer.token_type().expect("Subroutine dec: Failed to get token type");
        if token_type != TokenType::Keyword {
            return;
        }

        // Return if not a subroutine dec
        let keyword = self.tokenizer.keyword().unwrap();
        if !(keyword == Keyword::Constructor
            || keyword == Keyword::Function
            || keyword == Keyword::Method) {
            return;
        }

        // subroutineDec open
        self.write_tag_open("subroutineDec");

        // constructor | function | method
        match keyword {
            Keyword::Constructor => self.write_tag("keyword", "constructor"),
            Keyword::Function => self.write_tag("keyword", "function"),
            Keyword::Method => self.write_tag("keyword", "method"),
            _ => panic!("Invalid keyword"),
        }

        // void | type
        let token_type = self.tokenizer.token_type().expect("Subroutine dec: Failed to get token type");
        if token_type == TokenType::Keyword
            && self.tokenizer.keyword().unwrap() == Keyword::Void {
            self.write_tag("keyword", "void");
        } else {
            self.compile_type();
        }

        // subroutineName
        self.compile_identifier();

        // (
        self.compile_symbol('(');

        // parameterList
        self.write_tag_open("parameterList");
        self.compile_parameter_list();
        self.write_tag_close("parameterList");

        // )
        self.compile_symbol(')');

        // subroutineBody
        self.compile_subroutine_body();

        // subroutineDec close
        self.write_tag_close("subroutineDec");

        // Recurse
        self.compile_subroutine_dec();
    }

    fn compile_subroutine_body(&mut self) {
        // subroutineBody open
        self.write_tag_open("subroutineBody");

        // {
        self.compile_symbol('{');

        // varDec*
        self.compile_var_dec();

        // statements
        self.write_tag_open("statements");
        self.compile_statements();
        self.write_tag_close("statements");

        // }
        self.compile_symbol('}');

        // subroutineBody
        self.write_tag_close("subroutineBody");
    }

    fn compile_var_dec(&mut self) {
        // This should check again at the end if there are more varDec's
        // 'var'
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == TokenType::Keyword
            && self.tokenizer.keyword().unwrap() == Keyword::Var {
            // varDec open
            self.write_tag_open("varDec");
            self.write_tag("keyword", "var");

            // type
            self.compile_type();

            // Variable declarations
            self.compile_var_list();

            // ;
            self.compile_symbol(';');

            // varDec close
            self.write_tag_close("varDec");
            self.compile_var_dec();
        }
    }

    fn compile_statements(&mut self) {
        // This should recurse at the end
        let token_type = self.tokenizer.token_type().expect("Statements: Failed to get token type");
        if token_type != TokenType::Keyword {
            return;
        }

        let keyword = self.tokenizer.keyword().unwrap();
        match keyword {
            Keyword::Let => self.compile_let(),
            Keyword::If => self.compile_if(),
            Keyword::Do => self.compile_do(),
            Keyword::Return => self.compile_return(),
            Keyword::While => self.compile_while(),
            _ => panic!("Expected statement 'let', 'if', 'do', 'return', 'while'")
        }

        self.compile_statements();
    }

    fn compile_let(&mut self) {
        let token_type = self.tokenizer.token_type().expect("Let: Failed to get token type");
        if token_type != TokenType::Keyword {
            panic!("Expected let statement");
        }

        // letStatement open
        self.write_tag_open("letStatement");

        // let
        let keyword = self.tokenizer.keyword().unwrap();
        if keyword == Keyword::Let {
            self.write_tag("keyword", "let");
        } else { panic!("Expected let statement"); }

        // varName
        self.compile_identifier();

        // ([ expression ])?
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == Symbol
            && self.tokenizer.symbol() == '[' {
            // [
            self.write_tag("symbol", "[");
            // expression
            self.compile_expression();
            // ]
            self.compile_symbol(']');
        }

        // =
        self.compile_symbol('=');

        // expression
        self.compile_expression();

        // ;
        self.compile_symbol(';');

        // letStatement close
        self.write_tag_close("letStatement");
    }

    fn compile_if(&mut self) {
        let token_type = self.tokenizer.token_type().expect("If: Failed to get token type");
        if token_type != TokenType::Keyword {
            return;
        }

        // ifStatement open
        self.write_tag_open("ifStatement");

        // if
        let keyword = self.tokenizer.keyword().unwrap();
        if keyword == Keyword::If {
            self.write_tag("keyword", "if");
        } else { panic!("Expected if statement"); }

        // (
        self.compile_symbol('(');

        // expression
        self.compile_expression();

        // )
        self.compile_symbol(')');

        // {
        self.compile_symbol('{');

        // statements
        self.write_tag_open("statements");
        self.compile_statements();
        self.write_tag_close("statements");

        // }
        self.compile_symbol('}');

        // (else { statements })?
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == TokenType::Keyword
            && self.tokenizer.keyword().unwrap() == Keyword::Else {
            // else
            self.write_tag("keyword", "else");

            // {
            self.compile_symbol('{');

            // statements
            self.write_tag_open("statements");
            self.compile_statements();
            self.write_tag_close("statements");

            // }
            self.compile_symbol('}');
        }

        // ifStatement close
        self.write_tag_close("ifStatement");
    }

    fn compile_while(&mut self) {
        let token_type = self.tokenizer.token_type().expect("If: Failed to get token type");
        if token_type != TokenType::Keyword {
            return;
        }

        // whileStatement open
        self.write_tag_open("whileStatement");

        // while
        let keyword = self.tokenizer.keyword().unwrap();
        if keyword == Keyword::While {
            self.write_tag("keyword", "while");
        } else { panic!("Expected while statement"); }

        // (
        self.compile_symbol('(');

        // expression
        self.compile_expression();

        // )
        self.compile_symbol(')');

        // {
        self.compile_symbol('{');

        // statements
        self.write_tag_open("statements");
        self.compile_statements();
        self.write_tag_close("statements");

        // }
        self.compile_symbol('}');

        // whileStatement close
        self.write_tag_close("whileStatement");
    }

    fn compile_do(&mut self) {
        let token_type = self.tokenizer.token_type().expect("If: Failed to get token type");
        if token_type != TokenType::Keyword {
            return;
        }

        // doStatement open
        self.write_tag_open("doStatement");

        // do
        let keyword = self.tokenizer.keyword().unwrap();
        if keyword == Keyword::Do {
            self.write_tag("keyword", "do");
        } else { panic!("Expected do statement"); }

        // subroutineCall
        self.compile_subroutine_call();

        // ;
        self.compile_symbol(';');

        // doStatement close
        self.write_tag_close("doStatement");
    }

    fn compile_return(&mut self) {
        let token_type = self.tokenizer.token_type().expect("If: Failed to get token type");
        if token_type != TokenType::Keyword {
            return;
        }

        // returnStatement open
        self.write_tag_open("returnStatement");

        // return
        let keyword = self.tokenizer.keyword().unwrap();
        if keyword == Keyword::Return {
            self.write_tag("keyword", "return");
        } else { panic!("Expected return statement"); }

        // expression?
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == Symbol && self.tokenizer.symbol() != ';'
            || token_type != Symbol {
            // expression
            self.compile_expression();
        }

        // ;
        self.compile_symbol(';');

        // returnStatement close
        self.write_tag_close("returnStatement");
    }

    fn compile_subroutine_call(&mut self) {
        // subroutineName | (className | varName)
        self.compile_identifier();

        // .?
        let token_type = self.tokenizer.token_type().unwrap();
        if token_type == Symbol
            && self.tokenizer.symbol() == '.' {
            // .
            self.write_tag("symbol", ".");
            // subroutineName
            self.compile_identifier();
        }

        // (
        self.compile_symbol('(');

        // expressionList
        self.write_tag_open("expressionList");
        self.compile_expression_list();
        self.write_tag_close("expressionList");

        // )
        self.compile_symbol(')');
    }

    fn compile_expression(&mut self) {
        // This should recurse at the end
        // expression open
        self.write_tag_open("expression");

        // term
        self.compile_term();

        // (op term)*
        self.compile_op_term();

        // expression close
        self.write_tag_close("expression");
    }

    fn compile_op_term(&mut self) {
        // This should recurse at the end of the op branch
        // op?
        let token_type = self.tokenizer.token_type().expect("Expression: Failed to get token type");
        if token_type == Symbol {
            match self.tokenizer.symbol() {
                '+' => self.write_tag("symbol", "+"),
                '-' => self.write_tag("symbol", "-"),
                '*' => self.write_tag("symbol", "*"),
                '/' => self.write_tag("symbol", "/"),
                '<' => self.write_tag("symbol", "&lt;"),
                '>' => self.write_tag("symbol", "&gt;"),
                '=' => self.write_tag("symbol", "="),
                '&' => self.write_tag("symbol", "&amp;"),
                '|' => self.write_tag("symbol", "|"),
                _ => return,
            }

            // term
            self.compile_term();

            // Recurse
            self.compile_op_term();
        }
    }

    fn compile_expression_list(&mut self) {
        // This should recurse at the end in the ',' branch
        // expression
        self.compile_expression();

        // ,?
        let token_type = self.tokenizer.token_type().expect("Expression List: Failed to get token type");
        if token_type == Symbol
            && self.tokenizer.symbol() == ',' {
            self.write_tag("symbol", ",");

            // Recurse
            self.compile_expression_list();
        }
    }

    fn compile_term(&mut self) {
        // term open
        self.write_tag_open("term");

        let token_type = self.tokenizer.token_type().expect("Term: Failed to get token type");

        if token_type == IntConst {
            // integerConstant
            let int_const = self.tokenizer.int_val().expect("Failed to parse int constant, type must be uint_16");
            self.write_tag("integerConstant", &int_const.to_string());

        } else if token_type == StringConst {
            // stringConstant
            let string_const = self.tokenizer.string_val().to_string();
            self.write_tag("stringConstant", &string_const);

        } else if token_type == TokenType::Keyword {
            // keywordConstant
            match self.tokenizer.keyword().unwrap() {
                Keyword::True => self.write_tag("keyword", "true"),
                Keyword::False => self.write_tag("keyword", "false"),
                Keyword::Null => self.write_tag("keyword", "null"),
                Keyword::This => self.write_tag("keyword", "this"),
                _ => panic!("Expected constant"),
            }

        } else if token_type == Identifier {
            // varName | varName [ expression ] | subroutineCall
            let identifier = self.tokenizer.identifier().to_string();

            // Advance and check if next token is '[' or '('
            self.tokenizer.advance();
            let token_type = self.tokenizer.token_type().expect("Term Lookahead: Failed to get token type");
            if token_type == Symbol && self.tokenizer.symbol() == '('
                || token_type == Symbol && self.tokenizer.symbol() == '.' {
                // subroutineCall
                self.write_tag_no_advance("identifier", &identifier);

                // .?
                let token_type = self.tokenizer.token_type().unwrap();
                if token_type == Symbol
                    && self.tokenizer.symbol() == '.' {
                    // .
                    self.write_tag("symbol", ".");
                    // subroutineName
                    self.compile_identifier();
                }

                // (
                self.compile_symbol('(');

                // expressionList
                self.write_tag_open("expressionList");
                self.compile_expression_list();
                self.write_tag_close("expressionList");

                // )
                self.compile_symbol(')');

            } else if token_type == Symbol && self.tokenizer.symbol() == '[' {
                // varName [ expression ]
                // varName
                self.write_tag_no_advance("identifier", &identifier);

                // [
                self.write_tag("symbol", "[");

                // expression
                self.compile_expression();

                // ]
                self.compile_symbol(']');
            } else {
                // varName
                self.write_tag_no_advance("identifier", &identifier);
            }

        } else if token_type == Symbol {
            // ( expression ) | unaryOp term
            let symbol = self.tokenizer.symbol();
            if symbol == '-' || symbol == '~' {
                // unaryOp
                self.write_tag("symbol", &symbol.to_string());
                // term
                self.compile_term();
            } else if symbol == '(' {
                // (
                self.write_tag("symbol", "(");
                // expression
                self.compile_expression();
                // )
                self.compile_symbol(')');
            }
        }

        // term close
        self.write_tag_close("term");
    }
}

#[cfg(test)]
mod compilation_engine_tests {
    use super::*;
    #[test]
    fn test_class_compile() {
        let mut t = Tokenizer::tokenize(&vec![String::from("class Point {}")]).unwrap();
        let mut c = CompilationEngine::new(&mut t);
        let parsed = c.parse();
        assert_eq!(parsed, "<class>
  <keyword> class </keyword>
  <identifier> Point </identifier>
  <symbol> { </symbol>
  <symbol> } </symbol>
</class>\n");
    }
}