use rand::Rng;
use std::io::{self, Write};

fn main() {
    print!("Enter your password: ");
    io::stdout().flush().unwrap();
    
    let mut password = String::new();
    io::stdin().read_line(&mut password).unwrap();
    let password = password.trim();

    let mut rng = rand::thread_rng();
    let mut predicted_pass = String::new();

    while predicted_pass != password {
        predicted_pass.clear();
        for _ in password.chars() {
            predicted_pass.push((rng.gen_range(0..10) as u8 + b'0') as char);
        }
        println!("{}", predicted_pass);
    }

    println!("Your password is: {}", predicted_pass);
}
