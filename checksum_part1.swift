// https://codefights.com/challenge/MTgvXpcmjxQzkqpek
// 1000

let checksum_part1: (Int64) -> Int = {
    var a = Array(String($0).utf8).map{Int($0) - 48}, 
    r = 0, n = 3, k = a.count
    //print(a)
    
    for i in 1...k {
        r += a[k-i]*n
        n = 4 - n
    }
    //print(r)
    return (r+9) / 10 * 10 - r
}
