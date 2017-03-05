// https://codefights.com/challenge/mKe7e4ENqEF2v5QNz

let iScream: (Int, scoops: Int) -> Int = {
    //Number of combinations with repetition
    //((f s)) = (f+s-1 s) = (f+s-1)! / (s!*(f-1)!)
    //ex: 3, 3 -> 5! / 3! / 2!
    var f = $0, s = $1, n = 1.0
    
    if s < 1 {
        return 1
    }
    for i in 1...s {
        n /= Double(i)
    }
    for i in f...(f+s-1) {
        n *= Double(i)
    }
    
    return Int(n)
}


//teebee
let iScream: (Int, scoops: Int) -> Int = {
    var r = 1
    for i in 0 ..< $1 {
        r = -r * ($0 + i) / ~i
    }
    return r
}
