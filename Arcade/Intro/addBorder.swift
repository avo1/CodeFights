// https://codefights.com/arcade/intro/level-4/ZCD7NQnED724bJtjN

func addBorder(picture: [String]) -> [String] {
    var l = picture[0].characters.count + 2
    var a = "", r = [String]()
    
    for _ in 0..<l {
        a += "*"
    }
    r += [a]
    
    for i in 0..<picture.count {
        r += ["*\(picture[i])*"]
    }
    
    return r + [a]
}
