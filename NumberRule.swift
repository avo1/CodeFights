// https://codefights.com/challenge/kFDiPpGEvL7jfiEit
// 1000

let NumberRule: Int -> Any = {
    "\($0)".utf8.sort() == Array("\($0)".utf8)
}
    
    /*
    let a = "\($0)9".utf8.map( {Int($0)} )
    for i in 0..<a.count-1 {
        if a[i] > a[i+1] {
            return false
        }
    }
    */
    
    /*
    var n = $0, d = 9, e = 9
    while n > 0 {
        if n % 10 > d {
            return false
        }
        d = n % 10
        n /= 10
    }
    return true
    */
