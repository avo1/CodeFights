// https://codefights.com/challenge/zeS6of248AhuJB3xM
// 1000

func friendly_numbers(x: Int, y: Int) -> Any {
    var a = y, b = x

    for i in 1..<min(x, y) {
        a -= x % i < 1 ? i : 0
        b -= y % i < 1 ? i : 0
    }
    
    //should be a==0 && b==0
    return a+b == 0 && x != y ? "Yes" : "No"
}
