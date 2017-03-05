// https://codefights.com/challenge/ofAvn2vDpaq33hbqh
// 1000

let alpha4: String -> String = {
    var r = "", c = Array($0.utf8), l = c.count, i = 0
    
    
    //for i in 0.stride(to: l, by: 4) {
    while i < l {
        var a = 0
        for j in 0...3 {
            a += i+j < l ? Int(c[i+j]) - 1 : 0
        }
        r += "\(a%4)"
        i += 4
    }
   
    return r
} 