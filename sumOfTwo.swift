// https://codefights.com/interview/qAL6AiSejoJZRNyox/
// Google 1000

func sumOfTwo(a: [Int], b: [Int], v: Int) -> Bool {
    // this is O(n)
    // save the complement of `a` to dict
    // it's the hastable hence an item can be found in O(1)
    var comp: [Int:Bool] = [:]
    
    for n in a {
        if let _ = comp[v-n] {
            // this complement is saved
        } else {
            comp[v-n] = true
        }
    }
    for n in b {
        if let _ = comp[n] {
            return true
        }
    }
    return false

    /*
    // this is O(n log n), because of sort
    let x = a.sort()
    let y = Array(b.sort().reverse())
    let c1 = x.count, c2 = y.count
    var i = 0, j = 0
    //print(x)
    //print(y)
    
    while true {
        if (i == c1) || (j == c2) {
            return false
        }
        
        let a = x[i] + y[j]
        if a == v {
            return true
        }
        if a > v { j += 1 }
        if a < v { i += 1 }  
    }
    
    return false
    */
}
