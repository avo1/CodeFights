// https://codefights.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM

func sortByHeight(a: [Int]) -> [Int] {
    var t = a, b = a.sort(), j = 0
    
    while j < a.count && b[j] < 0
    { 
        j += 1 
    }
    
    for i in 0..<a.count {
        if t[i] >= 0 {
            t[i] = b[j]
            j += 1
        }
    }
    
    return t
}
