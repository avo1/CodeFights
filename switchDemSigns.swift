// https://codefights.com/challenge/CHajJHHfGYuGKMW7Ds

let switchDemSigns: String -> Any = {
    var a = $0.characters.map{ "\($0)" }, 
    b = a[0] == "-" ? "" : "- ", i = 0,
    t = ["[", "(", "{"]
    
    while i < a.count {
        if t.contains(a[i]) {
            var p = 0, s = ""

            repeat {
                p += t.contains(a[i]) ? 1 : ["]", ")", "}"].contains(a[i]) ? -1 : 0
                s += a[i++]
            } while p > 0
            
            b += s
        } else {
            b += a[i] == "-" ? "+" : a[i] == "+" ? "-" : a[i]
            i++
        }
    }
    
    return b
}
