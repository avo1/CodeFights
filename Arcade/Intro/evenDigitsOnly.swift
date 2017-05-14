// https://codefights.com/arcade/intro/level-6/6cmcmszJQr6GQzRwW

func evenDigitsOnly(n: Int) -> Bool {
    var a = String(n).characters.map{ Int("\($0)")! }
    for i in 0..<a.count {
        if a[i] % 2 == 1 {
            return false
        }
    }
    return true
}
