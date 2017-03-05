// https://codefights.com/challenge/ueKvGPJ8X2pircnkW
// 1000

let ShortenName: String -> Any = {
    //var n = $0.componentsSeparatedByString(", "), m = n[1].componentsSeparatedByString(" "), k = m.count-1
    var m = $0.componentsSeparatedByString(" "), k = m.count-1
    
    if k > 1 {
        m[k] = "\(m[k].characters.first!)."
    }

    //print(n)
    //print(m)
    //return m.map{ " " + $0 }.reduce(n[0] + ",", combine: +)
    //return String(m.map{ $0 + " " }.reduce("", combine: +).characters.dropLast())
    return m.dropLast().map{ $0 + " " }.reduce("", combine: +) + m[k]
}
