use std::{env, process};
use jack_analyzer::JackAnalyzer;

fn main() {
    let args: Vec<String> = env::args().collect();
    let mut analyzer: JackAnalyzer = JackAnalyzer::new(&args).unwrap_or_else(|e| {
        eprintln!("Problem parsing arguments: {e}");
        process::exit(1);
    });

    if let Err(e) = analyzer.analyze() {
        eprintln!("Encountered a problem during parsing: {e}");
    }
}
