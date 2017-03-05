// https://codefights.com/challenge/yBwcdkwQm5tAG2MJo
// 2000

let holidayBreak: Int -> Int = {
    //2016-12-23 = Fri
    //var d = (5 + ($0 - 2016) + ($0-2016)/4) % 7
    var d = (5 + ($0 - 2016) * 5 / 4) % 7
    if $0 >= 2100 {
        d = (d + 6) % 7
    }
    var e = (d + 9) % 7, r = e < 1 ? 11 : 10
    //print(d, e)
    
    //if d = 0,1,2,3 (sun-wed)  
    if (d < 4) {r += d+1} 
    //if e = 3, 4, 5, 6
    //if (e > 2) {r += 7-e}
    return  e > 2 ? r+7-e : r
}
