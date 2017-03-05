// https://codefights.com/challenge/mDb2jgMysXyo43s6H
// 3000


func f(x: Int, y: Int) -> Int {
    var n = x
    for i in (x+1)...(x+y) {
        n *= i
    }
    for i in 1...y {
        n /= i
    }
    return n / (x+y)
}

func helpingBob(x: Int, y: Int, k: Int) -> Any {
    //total = C(x+y, x) = (x+y)! / (x! * y!)
    //how many start with H: x * total / (x+y)

    var a = x, b = y, c = k, r = ""
    while a + b > 0 {
        let p = f(a, y: b)
        //print(c, p)
        if c >= p {
            r += "V"
            b--
            c -= p
        } else {
            r += "H"
            a--
        }
    
        if a < 1 {
            for _ in 1...b {
                r += "V"
            }
            break
        }
        if b < 1 {
            for _ in 1...a {
                r += "H"
            }
            // save 2 chars, instead of break
            a = 0
        }
    }
    
    return r
}
