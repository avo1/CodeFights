// https://codefights.com/arcade/code-arcade/at-the-crossroads/QrCSNQWhnQoaK9KgK

func arithmeticExpression(A: Int, B: Int, C: Int) -> Bool {
    return (A+B==C) || (A-B==C) || (A*B==C) || (B*C==A)
}
