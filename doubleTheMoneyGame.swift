// https://codefights.com/challenge/4Mpg5NjZrFJtqvhGC
// 2000

func doubleTheMoneyGame(n: Int, m: Int) -> [Double] {
    var a = [Double]() 
    // = Array(count: n, repeatedValue: Double(m))
    for _ in 1...n {
        a+=[Double(m)]
    }
    
    for i in (0..<n).reverse() {
        for j in 0..<n {
            if (i != j) {
                a[j] /= 2
                a[i] += a[j]                
            }
        }
    }
    return a
}
