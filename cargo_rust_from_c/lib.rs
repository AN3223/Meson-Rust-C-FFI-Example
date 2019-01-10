extern crate libc;
use libc::c_int;

#[no_mangle]
fn cargofunction() -> c_int {
    100
}