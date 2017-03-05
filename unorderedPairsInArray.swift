//https://codefights.com/challenge/KBfagxuJtTGDbiiqh

func unorderedPairsInArray(k: Int, x: Int, y: Int, arr: [Int]) -> Int {
    var a = arr, c = a.count, r = 0
    //if c < 2 { return 0 }
    for i in 0..<c {
        for j in 0..<c {
            r += (a[i] + a[j]) % k == x && a[i]*a[j] % k == y ? 1 : 0
        }
    }
    return r / 2
}
