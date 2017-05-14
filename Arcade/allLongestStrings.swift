// https://codefights.com/arcade/intro/level-3/fzsCQGYbxaEcTr2bL

func allLongestStrings(inputArray: [String]) -> [String] {
    var k = 0
    for i in 0..<inputArray.count {
        let a = inputArray[i].characters.count
        if a > k {
            k = a
        }
    }
    
    var r = [String]()
    for i in 0..<inputArray.count {
        if inputArray[i].characters.count == k {
            r += [inputArray[i]]
        }
    }
    return r
}
