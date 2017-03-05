// https://codefights.com/challenge/jopxFifZN3GPjG856
// 3000

let extractPinCode: [Double] -> [Int] = {
    var r = [Int](), x = $0, k = x.count-1, i = 0, a = 7 - x[k-1]

    while i < k-2 {
        let n = Int(x[i]+a) / 2 * 3 + Int(x[i+1]+3-x[k]) / 2
   
        i += 2
        if n > 11 {
            r.removeLast()
        } else {
            r += [n%11]
        }
    }
    return r
}

/*
let extractPinCode: [Double] -> [Int] = {
    var r = [Int](), 
    x = $0.enumerate().flatMap { $0 % 2 > 0 ? $1 : nil },
    y = $0.enumerate().flatMap { $0 % 2 < 1 ? $1 : nil }
    
    // last y should be max, last x should be min
    // convert (lastX, lastY) to (1.5, 7.5)

    for i in 0..<x.count-1 {
        var n = (Int(y[i]+8-y.last!) - 1) / 2 * 3  + (Int(x[i]-x.last!) + 3) / 2
        
        if n > 11 {
            r.removeLast()
        } else {
            r += n < 10 ? [n] : [0]
        }

    }
    return r
}
*/
