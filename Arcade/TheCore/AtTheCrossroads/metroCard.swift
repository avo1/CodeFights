// https://codefights.com/arcade/code-arcade/at-the-crossroads/J7PQDxpWqhx7HrvBZ

func metroCard(lastNumberOfDays: Int) -> [Int] {
    //let m: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if (lastNumberOfDays < 31) {
        return [31]
    } else {
        return [28, 30, 31]
    }
}
