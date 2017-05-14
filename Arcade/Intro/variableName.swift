// https://codefights.com/arcade/intro/level-6/6Wv4WsrsMJ8Y2Fwno

func variableName(name: String) -> Bool {
    var a = Array(name.lowercaseString.utf8)

    if (a[0] < 97 || a[0] > 122) && a[0] != 95 {
        return false
    }
    
    for i in 1..<a.count {
        if !(a[i] == 95 || (a[i] >= 97 && a[i] <= 122) || (a[i] >= 48 && a[i] <= 57)) {
            return false
        }
    }
    
    return true
}
