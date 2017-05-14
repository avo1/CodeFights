// https://codefights.com/arcade/intro/level-8/3AgqcKrxbwFhd3Z3R

func extractEachKth(inputArray: [Int], k: Int) -> [Int] {
    var a = inputArray, n = a.count, p = n / k * k - 1
    print(p)
    while p >= 0 {
        a.removeAtIndex(p)
        p -= k
    }
    return a
}
