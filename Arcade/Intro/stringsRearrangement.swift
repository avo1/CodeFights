// https://codefights.com/arcade/intro/level-7/PTWhv2oWqd6p4AHB9

//distance between 2 strings
func d(x: String, y: String) -> Int {
    var a = Array(x.utf8), b = Array(y.utf8), c = 0
    for i in 0..<a.count {
        c += a[i] != b[i] ? 1 : 0
    }
    return c
}

func bruteForce(depth: Int, inout inputArray a: [String]) -> Bool {
    
    if (depth == a.count) {
        for i in 0..<(a.count-1) {
            if d(a[i], y: a[i+1]) != 1 {
                return false
            }
        }
        return true
    }
    
    for i in depth..<a.count {
        var t = a[depth]
        a[depth] = a[i]
        a[i] = t
        
        if (bruteForce(depth + 1, inputArray: &a)) {
            return true
        }
        
        t = a[depth]
        a[depth] = a[i]
        a[i] = t
    }
    return false
}

func stringsRearrangement(inputArray: [String]) -> Bool {
    var a = inputArray
    return bruteForce(0, inputArray: &a)
}