// https://codefights.com/arcade/intro/level-6/PWLT8GBrv9xXy4Dui

func alphabeticShift(inputString: String) -> String {
    var a = inputString.utf8.map{ ($0 - 96) % 26 + 1 + 96 }
    
    return String(bytes: a, encoding: NSUTF8StringEncoding)!
}
