// https://codefights.com/challenge/xkEsQ3fYxMHwtvFMG
// 1000

let VanyaAndBook1s: Int -> Int = {
    var r = 0
    for i in 1...$0 {
        j = i
        while j > 0 {
            r++
            j /= 10
        }
    }
    return r
}
