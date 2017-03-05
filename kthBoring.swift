//https://codefights.com/challenge/2ST7pD433eT8SXNyM

let kthBoring: Int -> Int = {
    var a = [1,2], i = 1, n = 4
    for i in 1...25 {
        a += [a[i-1]+a[i]]
    }
    
    while i < $0 {
        while 1 > 0 {
            n++
            for j in 2...Int(sqrt(Double(n))) {
                if n % j < 1 {
                    // n is not prime
                    if !a.contains(n) {
                        i++
                        break
                    }
                }
            }
            break
        }
    }
    return n
}
