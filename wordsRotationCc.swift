// https://codefights.com/challenge/c6TgF2asHrFEN8X3Z
// 1000

let wordsRotationCc: ([String]) -> [String] = {
    var r = [String]()
    
    for i in 0..<$0[0].utf8.count {
        var x = ""
        for w in $0 {
            x += "\(Array(w.characters)[i])"
        }
        r = [x] + r
    }
    
    return r
}