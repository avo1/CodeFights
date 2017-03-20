// https://codefights.com/interview/xfpK5NtkLaoYEPLCT
// Apple 1000

func reverseInteger(x: Int) -> Int {
    var n = abs(x), r = 0
    
    while n > 0 {
        r = r * 10 + n % 10
        n /= 10
    }
    return x > 0 ? r : -r
}
