// https://codefights.com/arcade/intro/level-7/vExYvcGnFsEYSt8nQ

func circleOfNumbers(n: Int, firstNumber: Int) -> Int {
    return firstNumber < n / 2 ? firstNumber + n/2 : firstNumber - n/2
}
