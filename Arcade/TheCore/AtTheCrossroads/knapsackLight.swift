// https://codefights.com/arcade/code-arcade/at-the-crossroads/r9azLYp2BDZPyzaG2

func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
    if (maxW >= weight1 + weight2) {
        return value1 + value2
    } 
    if (maxW < weight1) && (maxW < weight2) {
        return 0
    }
    
    if (value1 > value2) {
        if (maxW >= weight1) {
            return value1
        } else { //if (maxW >= weight2) {
            return value2
        } 
    } else {
        if (maxW >= weight2) {
            return value2
        } else { //if (maxW >= weight1) {
            return value1
        }
    }
    return 0
}
