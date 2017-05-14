// https://codefights.com/arcade/intro/level-7/ZFnQkq9RmMiyE6qtq

func absoluteValuesSumMinimization(A: [Int]) -> Int {
    let c = A.count
    
    //prove?
    if c % 2 < 1 {
        // try A[c/2-1] and A[c/2]
        var m1 = 0, m2 = 0 
        for i in 0..<c {
            m1 += abs(A[i] - A[c/2-1])
            m2 += abs(A[i] - A[c/2])
        }
        return m1 <= m2 ? A[c/2-1] : A[c/2]
    } else {
        return A[c/2]
    }
}
