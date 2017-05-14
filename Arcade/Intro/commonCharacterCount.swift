// https://codefights.com/arcade/intro/level-3/JKKuHJknZNj4YGL32

func commonCharacterCount(s1: String, s2: String) -> Int {
    var a = 0, x = Array(s1.utf8), y = Array(s2.utf8)
    for i in 0..<x.count {
        if let p = y.indexOf(x[i]) {
            a += 1
            y.removeAtIndex(p)
        }
    }
    return a
}
