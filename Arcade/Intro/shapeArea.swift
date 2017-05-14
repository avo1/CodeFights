// https://codefights.com/arcade/intro/level-2/yuGuHvcCaFCKk56rJ

func shapeArea(n: Int) -> Int {
    // (u1+un)/ 2 * n = (2u1 + (n-1)*d) / 2 * n
    return n == 1 ? 1 : (2 + (n-2)*2) * (n-1) + 2*n - 1
}