// https://codefights.com/arcade/code-arcade/intro-gates/aiKck9MwwAKyF8D4L

func lateRide(n: Int) -> Int {
    return sum2digits(n/60) + sum2digits(n%60)
}

func sum2digits(n: Int) -> Int {
    return n/10 + n % 10
}