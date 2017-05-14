// https://codefights.com/arcade/intro/level-5/5xPitc3yT3dqS7XkP

func boxBlur(image: [[Int]]) -> [[Int]] {
    var a = image, r = [[Int]]()
    for i in 1..<(a.count-1) {
        var x = [Int]()
        for j in 1..<(a[i].count - 1) {
            var s = 0
            for h in -1...1 {
                for k in -1...1 {
                    s += a[i+h][j+k]
                }
            }
            x += [Int(s/9)]
        }
        r += [x]
    }
    
    return r
}
