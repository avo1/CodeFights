// https://codefights.com/arcade/code-arcade/intro-gates/vExYvcGnFsEYSt8nQ

func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    var mid: Int = n/2
    if (firstNumber < mid) {
        return firstNumber + mid
    } else {
        return firstNumber - mid
    }
}
