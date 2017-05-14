// https://codefights.com/arcade/intro/level-2/xzKiBHjhoinnpdh6m

func adjacentElementsProduct(inputArray: [Int]) -> Int {
    var a = inputArray, p = a[0] * a[1]
    for i in 1..<(a.count - 1) {
        let x = a[i] * a[i+1]
        if x > p {
            p = x
        }
    }
    return p
}
