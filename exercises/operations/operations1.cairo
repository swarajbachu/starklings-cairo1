// Integer types implement basic comparison and arithmetic operators.
// Felt252 operations should be avoided where possible, as they could have unwanted behavior.


// TODO
// Return the solution of x^3 + y - 2

fn pow(x:usize, mut y:usize) -> usize {
    let res = x;
    y = y-1;
    if(y == 0){
        return res;
    }
    return x * pow(x,y);
}
 
use debug::PrintTrait;

fn poly(x: usize, y: usize) -> usize {
    // FILL ME

    let res = pow(x,3) + y - 2;
    return res; // Do not change
}


// Do not change the test function
#[test]
fn test_poly() {
    let res = poly(5, 3);
    assert(res == 126, 'Error message');
    assert(res < 300, 'res < 300');
    assert(res <= 300, 'res <= 300');
    assert(res > 20, 'res > 20');
    assert(res >= 2, 'res >= 2');
    assert(res != 27, 'res != 27');
    assert(res % 2 == 0, 'res %2 != 0');
}

