#[link(name = "clib")]
extern {
    fn cfunction() -> i64;
}

fn main() {
    println!("Hello {}", unsafe { cfunction() });
}