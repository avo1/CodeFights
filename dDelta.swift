// https://codefights.com/challenge/E5pfJa5D7jsWFgBai
// 1000

func dDelta(a: Int, base: Int) -> Int {
    var b = base, n = a / b, r = a % b, x = r, y = r
    while n > 0 {
        r = n % b
        x = r < x ? r : x
        y = r > y ? r : y
        
        n = n / b
    }
    return y - x
}
