// https://codefights.com/challenge/cqMmqTmGeP4umMcD7
// 1000

let FindColumnName: Int -> String = {
    var r = "", n = $0
    while n-- > 0 {
        //n--
        //r = "\(UnicodeScalar(n % 26 + 65))" + r
        r = "\u{n % 26 + 65}" + r
        n /= 26
    }
    return r
}
