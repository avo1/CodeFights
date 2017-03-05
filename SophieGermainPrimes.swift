// https://codefights.com/challenge/REsoj6NnHZYpA8zfa
// 1000

func p(n: Int) -> Bool {
    //return n > 1 && !(2..<n).contains { n % $0 < 1 }
    return n > 1 && !(2..<1+Int(sqrt(Double(n)))).contains { n % $0 < 1 }
}


let SophieGermainPrimes: [Int] -> Int = {
    $0.filter { p($0) && p($0*2 + 1) }.count
}
