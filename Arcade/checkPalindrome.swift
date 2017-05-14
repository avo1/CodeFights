// https://codefights.com/arcade/intro/level-1/s5PbmwxfECC52PWyQ

func checkPalindrome(inputString: String) -> Bool {
    var a = inputString.characters.map { "\($0)" },
    p = a.count
    for i in 0..<(p / 2) {
        if a[i] != a[p - i - 1] {
            return false
        }
    }
    return true
}
