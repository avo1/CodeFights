// https://codefights.com/arcade/intro/level-6/mCkmbxdMsMTjBc3Bm

func arrayReplace(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    var a = inputArray
    
    for i in 0..<a.count {
        if a[i] == elemToReplace {
            a[i] = substitutionElem
        }
    }
    
    return a
}
