use std::{env, process};

use vmtranslator::VmTranslator;

fn main() {
    let args: Vec<String> = env::args().collect();
    let mut translator: VmTranslator = VmTranslator::new(&args).unwrap_or_else(|e| {
        eprintln!("Problem parsing arguments: {e}");
        process::exit(1);
    });

    if let Err(e) = translator.translate() {
        eprintln!("Encountered a problem during translation: {e}");
    }
}
