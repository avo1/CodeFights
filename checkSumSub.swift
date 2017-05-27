// https://codefights.com/challenge/oDm5up3SPpMZqpEmy
// 2000

func checkSumSub(a: [Int], k: Int) -> Bool {
    var m = [0:1], s = 0, r = false
    // m[s] = 1 means there is subarray of 'a' that sums to s
    for i in a {
        s += i
        m[s] = 1
        // i found a subset to s-k 
        if m[s-k] > 0 { 
            r = true
            // now can return already
        }
    }
    return r
}
