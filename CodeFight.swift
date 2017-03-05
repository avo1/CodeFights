// https://codefights.com/challenge/okok2rHiWhetqWZfR
// 1000

let CodeFight: Int -> [String] = {
    var s = ["1"]
    for i in 2..<$0+1 {
        let b = i % 5 < 1, x = b ? "Code" : ""

        /*
        if i%7 < 1 {
            s += [x+"Fight"]
        } else {
            s += [x != "" ? x : String(i)]
        }
        */
        
        s += i % 7 < 1 ? [x+"Fight"] : [b ? x : "\(i)"]
    }
    return s
}

