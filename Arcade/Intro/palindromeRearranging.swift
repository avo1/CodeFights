// https://codefights.com/arcade/intro/level-4/Xfeo7r9SBSpo3Wico

func palindromeRearranging(inputString: String) -> Bool {
    var a = Array(inputString.utf8).sort(), i = 0, c = [Int]()
    //print(a)
    
    while i < a.count {
        var x = 1
        while i < a.count - 1 && a[i] == a[i+1] {
            x += 1
            i += 1
            
        }
        c += [x]
        i += 1
        
    }
    
    print(c)
    
    var nOdds = 0
    for i in 0..<c.count {
        nOdds += c[i] % 2
    }
    return nOdds <= 1
}
