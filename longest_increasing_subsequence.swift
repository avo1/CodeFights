// https://codefights.com/challenge/dGd57tGyHDa6dK5AF

let longest_increasing_subsequence: [Int] -> [Int] = {
    var t = [-1], d = [1], a = $0 + [9999], 
    p = 0, r = [Int]()
    
    for i in 1..<a.count {
        var m = 0, k = 9999
        p = -1
        for j in 0..<i {
            // among the same m, get the position of smallest a[i]
            if a[j] < a[i] {
                // if d[j] > m || (d[j] == m && a[j] < k)
                if d[j] > m || d[j] == m && a[j] < k {
                    m = d[j]
                    p = j
                    k = a[j]
                }
            }
        }
        
        t += [p]
        d += p < 0 ? [1] : [m + 1]
    }
    //print(d)
    
    //trace back, p is always the last one, no need next line    
    //p = t.last!
    while p >= 0 {
        r = [a[p]] + r
        p = t[p]    
    }
    
    return r
}
