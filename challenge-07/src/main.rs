// Using case folding, try to determine if following string pairs are equal. (assume all strings are already normalized and case folding won't affect normalization)

// strasse - straße
// straẞe - straße  
// straSSe - straẞe
// ΣTΣTΣ - σtσtς (context sensitive example)
// İme - ime (try turkish locale)

use icu_casemap::CaseMapper;

fn main() {
    let cm = CaseMapper::new();
}
