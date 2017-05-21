// https://codefights.com/arcade/intro/level-9/hoLtYWbjdrD2PF6yo

func sumDigits(x: Int) -> Int {
    var s = 0, n = x 
    while n > 0 {
        s += n%10
        n /= 10
    }
    return s
}

func digitDegree(n: Int) -> Int {
    if n < 10 { return 0 }
    
    var x = sumDigits(n), d = 1
    while x >= 10 {
        d += 1
        x = sumDigits(x)
    }
    return d
}
