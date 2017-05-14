// https://codefights.com/arcade/intro/level-8/rRGGbTtwZe2mA8Wov

func firstDigit(inputString: String) -> Character {
    let x = Array(inputString.utf8).filter { $0 >= 48 && $0 <= 57 }
    return Character(UnicodeScalar(x[0]))
}
