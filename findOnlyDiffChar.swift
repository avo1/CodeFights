// https://codefights.com/challenge/RsQYfmimvek4JiiiG

let findOnlyDiffChar: ([Int], b: [Int]) -> Int = {
    ( $0 + $1.map{-$0} ).reduce(0) { $0 + $1 }
    //$0.reduce(0, combine: +) - $1.reduce(0, combine: +)

    /*
    let c = a.sort(), d = b.sort()
    for i in 0..<d.count {
        if c[i] != d[i] {
            return c[i]
        }
    }
    return c.last!
    */
}