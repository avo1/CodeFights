// https://codefights.com/challenge/v5Zg8trjoun3PTxrZ
// 1000


let countIt: Int -> Int = {
    
    var d = [0: 1, 6: 1, 9: 1, 8: 2], n = $0, r = 0
    repeat {
        //r += a[n % 10]
        r += d[n % 10] ?? 0
        n /= 10
    } while n>0
    return r
    
    
    //let a = [1,0,0,0,0,0,1,0,2,1], y = String($0).characters.map { a[Int(String($0))!] }

    //return y.reduce(0, combine: +)
}
