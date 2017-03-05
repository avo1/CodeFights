// https://codefights.com/challenge/6FcoYgXWmxETjuuaj
// 1000

let decode2: String -> String = {
    /*
    var c = $0.utf8.map{(Int($0)+8) % 26}
    return String(c.map{Character(UnicodeScalar(($0 * $0 + 25) % 26 + 97))})
    */
    
    String($0.utf8.map{(Int($0)+8) % 26}.map{Character(UnicodeScalar(($0 * $0 + 25) % 26 + 97))})
    
    /*
    var r = "", c = $0.utf8.map{(Int($0)+8) % 26}, i = 0
    while i < c.count {
        var a = c[i++]
        //r += a > 0 ? "\(UnicodeScalar(a*a % 26 + 96))" : "z"
        r += "\(UnicodeScalar((a*a + 25) % 26 + 97))"
    }
   
    return r
    */
}
