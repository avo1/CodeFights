// https://codefights.com/arcade/code-arcade/at-the-crossroads/aFF9HDm2Rsti9j5kc

func isInfiniteProcess(a: Int, b: Int) -> Bool {
    return (b < a) || ((b-a) % 2 == 1)
}
