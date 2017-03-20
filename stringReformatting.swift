// https://codefights.com/interview/4e6LZSessGpKPx3uB/solutions
// Google 1000

func stringReformatting(s: String, k: Int) -> String {
    let a = s.characters.map { String($0) }.filter { $0 != "-" }
    var c = a.count, x = c % k, r = ""
    
    if c == 0 { return "" }
    if x == 0 {
        x = k
        c -= k
    }
    
    for i in 0..<x {
        r += a[i]
    }
    
    if c >= k {
        for i in 0..<(c/k) {
            r += "-"
            for j in 0..<k {
                r += a[x + k*i+j]
            }
        }
    }
    
    return r
}
