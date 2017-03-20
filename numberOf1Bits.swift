// https://codefights.com/interview/fDtqXxcFykCQfrqay
// MS, Apple, Adobe 1000

func numberOf1Bits(n: Int) -> Int {
    var r = 0, x = n
    while x > 0 {
        r += x%2
        x /= 2
    }
    return r
}
