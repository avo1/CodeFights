// https://codefights.com/arcade/code-arcade/intro-gates/mZAucMXhNMmT7JWta

func phoneCall(min1: Int, min2_10: Int, min11: Int, S: Int) -> Int {
    var l: Int = 0
    var m = S
    if (m >= min1) {
        l += 1
        m -= min1
    }
    while (l < 10) && (m >= min2_10) {
        l += 1
        m -= min2_10
    }
    if (l == 10) && (m >= min11) {
        l += m / min11
    }
    return l
}
