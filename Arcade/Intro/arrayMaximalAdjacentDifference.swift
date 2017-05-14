// https://codefights.com/arcade/intro/level-5/EEJxjQ7oo7C5wAGjE

func arrayMaximalAdjacentDifference(inputArray: [Int]) -> Int {
    var m = 0
    for i in 0..<(inputArray.count - 1) {
        let x = abs(inputArray[i] - inputArray[i+1])
        if x > m {
            m = x
        }
    }
    
    return m
}
