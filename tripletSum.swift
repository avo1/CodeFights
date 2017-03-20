// https://codefights.com/interview/MZnrYnavhHmYEwZs8
// Samsung, Amazon 2000

func tripletSum(x: Int, a: [Int]) -> Bool {
    let c = a.count    
    if c < 3 {
        return false
    }
    
    for i in 0..<(c-2) {
        let s = x - a[i]
        var comp: [Int:Bool] = [:]
        
        for j in (i+1)..<c {
            if let _ = comp[a[j]] {
                return true
            } else if let _ = comp[s-a[j]] {
                // this complement is saved
            } else {
                comp[s-a[j]] = true
            }
        }
    }
    return false
}
