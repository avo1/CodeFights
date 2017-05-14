// https://codefights.com/arcade/intro/level-8/8N7p3MqzGQg5vFJfZ

func differentSymbolsNaive(s: String) -> Int {
    var a = Array(s.utf8), c = 0
    
    while a.count > 1 {
        var k = a.count-1, x = a[k]
        while k > 0 {
            if a[k] == x {
                a.removeAtIndex(k)
                print(a)
            }
            k--
        }
        c++
    }
    return c
}
