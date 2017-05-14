// https://codefights.com/arcade/intro/level-4/xvkRbxYkdHdHNCKjg

func arrayChange(inputArray: [Int]) -> Int {
    var a = inputArray, c = 0
    for i in 1..<a.count {
        if a[i] <= a[i-1] {
            c += a[i-1] - a[i] + 1
            a[i] = a[i-1] + 1
        }
    }
    
    return c
}
