// https://codefights.com/arcade/intro/level-9/AACpNbZANCkhHWNs3

func longestDigitsPrefix(inputString: String) -> String {
    var a = inputString.utf8.map{Int($0)}, c = ""
    for i in 0..<a.count {
        if a[i] < 48 || a[i] > 57 {
            break
        }
        c += String(UnicodeScalar(a[i]))
    }
    return c
}
