// https://codefights.com/arcade/intro/level-3/3o6QFqgYSontKsyk4

func reverseParentheses(s: String) -> String {
    var a = Array(s.characters)
    var openParen = 0, findParen = true
    
    while (findParen) {
        findParen = false
        for i in 0..<a.count {
            if a[i] == "(" {
                openParen = i
                findParen = true
            }
            if a[i] == ")" {
                // reverse from openParen+1 to i-1
                let x = (i - openParen - 1) / 2
                for j in 1...x {
                    let c = a[openParen+j]
                    a[openParen+j] = a[i-j]
                    a[i-j] = c
                }
                
                // remove parentheses
                a.removeAtIndex(i)
                a.removeAtIndex(openParen)
                break
            }
        }
    }
    
    return String(a)
}
