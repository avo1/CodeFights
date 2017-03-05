//https://codefights.com/challenge/ELRMTabuAk4NSbzpc

let clockRadian: String -> Any = {
    var a = $0.componentsSeparatedByString(":"),
    b = abs(60 * Int(a[0])! - 11 * Int(a[1])!), y = 360
    
    b = b>y ? 720-b : b
    
    var x = b, c = 0
    while x > 0 {
        c = x
        x = y%x 
        y = c
   }
    
    b /= y
    y = 360/y

    // 0.5 * |60*H - 11*M|
    
    //return b < 1 ? "0" : b==y ? "pi" : (b < 2 ? "" : "\(b)") + "pi/\(y)"
    return b < 1 ? "0" : b<y ? (b < 2 ? "" : "\(b)") + "pi/\(y)" : "pi"
}
