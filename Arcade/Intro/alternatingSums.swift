// https://codefights.com/arcade/intro/level-4/cC5QuL9fqvZjXJsW9

func alternatingSums(a: [Int]) -> [Int] {
    var s1 = 0, s2 = 0
    for i in 0..<a.count 
    {
        if i % 2 == 0 {
            s1 += a[i]
        } else {
            s2 += a[i]
        }
    }
    
    return [s1, s2]
}
