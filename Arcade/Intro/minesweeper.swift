// https://codefights.com/arcade/intro/level-5/ZMR5n7vJbexnLrgaM

func minesweeper(matrix: [[Bool]]) -> [[Int]] {
    var a = matrix, n = a.count, m = a[0].count, r = [[Int]]()
    for i in 0..<n {
        var x = [Int]()
        for j in 0..<m {
            var s = 0
            for h in -1...1 {
                for k in -1...1 {
                    if (0..<n).contains(i+h) && (0..<m).contains(j+k) {
                        if !(h == 0 && k == 0) {
                            print(h, k)
                            s += a[i+h][j+k] ? 1 : 0
                        }
                    }
                }
            }
            x += [s]
        }
        r += [x]
    }
    
    return r

}
