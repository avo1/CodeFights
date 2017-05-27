// https://codefights.com/arcade/code-arcade/at-the-crossroads/sgDWKCFQHHi5D3Szj

func extraNumber(a: Int, b: Int, c: Int) -> Int {
    if (a == b) { return c }
    if (b == c) { return a }
    if (a == c) { return b }
    return 0
}
