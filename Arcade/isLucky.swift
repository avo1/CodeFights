// https://codefights.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ

func isLucky(n: Int) -> Bool {
    var a = String(n).characters.map { Int("\($0)")! }, h = a.count / 2
    var h1 = a[0..<h].reduce(0, combine: +)
    var h2 = a[h..<2*h].reduce(0, combine: +)
    
    print(a)
    return h1 == h2
}
