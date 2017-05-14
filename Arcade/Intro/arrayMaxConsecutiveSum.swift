// https://codefights.com/arcade/intro/level-8/Rqvw3daffNE7sT7d5

func arrayMaxConsecutiveSum(inputArray: [Int], k: Int) -> Int {
    var m = 0, a = inputArray, n = a.count
    for i in 0..<k {
        m += a[i]
    }
    
    var s = m
    for i in k..<n {
        s += a[i]
        s -= a[i-k]
        if s > m {
            m = s
        }
    }
    return m
}
