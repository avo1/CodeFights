// https://codefights.com/challenge/aEPJbWzkSjEuuH3cH
// 1000

let alienBit: (String) -> Any = {
    var r = "", a = $0.utf8.map{Int($0)-48}

    for i in 2.stride(to: a.count, by: 3) {
        r += "\(UnicodeScalar(a[i] * 100 + a[i+1] * 10 + a[i+2]))"
    }
    
    return r
    
}
