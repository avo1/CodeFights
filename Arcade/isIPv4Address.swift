// https://codefights.com/arcade/intro/level-5/veW5xJednTy4qcjso

func isIPv4Address(inputString: String) -> Bool {
    var a = inputString.componentsSeparatedByString(".")
    //print(a)
    if a.count != 4 {
        return false
    }
    
    for i in 0...3 {
        if let x = Int(a[i]) {
            if x < 0 || x > 255 {
                return false
            }
        } else {
            return false
        }
    }
    
    return true
}
