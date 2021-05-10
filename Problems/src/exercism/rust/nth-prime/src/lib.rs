pub fn nth(n: u32) -> u32 {
    let mut v = Vec::with_capacity((n + 1) as usize);
    let mut counter: u32 = 0;
    for i in 2..std::u32::MAX {
        if is_prime(i) {
            counter += 1;
            v.push(i);
        }
        if counter - 1 == n {
            return v[n as usize];
        }
    }
    v[n as usize]
}

fn is_prime(n: u32) -> bool {
    if n == 2 {
        return true;
    }
    for i in 2..n {
        if n % i == 0 {
            return false;
        }
    }
    true
}
