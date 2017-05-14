// https://codefights.com/arcade/code-arcade/intro-gates/bszFiQAog96G9CXKg

func seatsInTheater(nCols: Int, nRows: Int, col: Int, row: Int) -> Int {
    return (nCols - col + 1) * (nRows - row)
}
