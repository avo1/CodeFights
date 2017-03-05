// https://codefights.com/challenge/enM8nziGuNuGjSxPg
// 1000

let one1: Int -> Bool = {
    var s=0, x=$0
    for i in 1...10 {
        s += x%10 * i
        x /= 10
    }
    return s % 11 < 1
}
