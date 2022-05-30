// https://codefights.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ

func isLucky(n: Int) -> Bool {
    let a = String(n).map { Int("\($0)")! }, h = a.count / 2
    let h1 = a[0..<h].reduce(0) {
        $0 + $1
    }
    let h2 = a[h..<2*h].reduce(0) {$0 + $1} 
    print(a)
    return h1 == h2
}
