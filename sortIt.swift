// https://codefights.com/challenge/KBmHkh6b7q68QBiHd

let sortIt: String -> Any = {
    var a = $0.lowercaseString.characters.sort(), 
    b = ($0 + "^").characters.filter{$0 < "_"}.sort(), j = 0
    
    //print(a, b)
    
    for i in 0..<a.count {
        if "\(a[i])".uppercaseString == "\(b[j])" {
            a[i] = b[j++]
        } 
    }
    
    return String(a)
}
