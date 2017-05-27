// https://codefights.com/challenge/EYpoYCY6FNTKeimZx
// 1000

func swapPairBits(k: Int64, p1: Int, p2: Int) -> Any {
    /*
    01 ^ 11 = 10
    10 ^ 11 = 01
    */
    let x = Int64(p1)-1, y = Int64(p2)-1,
    a = k>>x & 1, b = k>>y & 1
    
    // for readability: k ^ (1<<x | 1<<y)
    return a == b ? k : 1 << y | 1 << x ^ k
}
