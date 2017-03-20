// https://codefights.com/interview/sJ4xmzNKNTtMTSBbP
// Apple, MS 2000

func higherVersion2(ver1: String, ver2: String) -> Int {
    var a = ver1.componentsSeparatedByString(".").map { Int($0)! }
    var b = ver2.componentsSeparatedByString(".").map { Int($0)! }
    
    for i in 0..<a.count {
        if a[i] < b[i] { return -1 }
        if a[i] > b[i] { return  1 }
    }
    
    return 0
}
