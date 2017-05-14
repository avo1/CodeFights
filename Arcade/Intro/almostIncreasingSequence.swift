// https://codefights.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG

func isStrictlyIncreasing(a: [Int]) -> Bool {
    for i in 0..<(a.count-1) {
        if a[i] >= a[i+1] {
            return false
        }
    }
    return true
}

func almostIncreasingSequence(sequence: [Int]) -> Bool {
    if isStrictlyIncreasing(sequence) {
        return true
    }
    
    var a = sequence, r = [Int]()
    for i in 0..<(a.count-1) {
        if a[i] >= a[i+1] {
            r += [i, i+1]
        }
    }
    
    //print(r)
    for i in 0..<r.count {
        a = sequence
        a.removeAtIndex(r[i])
        if isStrictlyIncreasing(a) {
            return true
        }
    }
    return false
}
