// https://codefights.com/arcade/intro/level-9/r9azLYp2BDZPyzaG2

func knapsackLight(value1: Int, weight1: Int, value2: Int, weight2: Int, maxW: Int) -> Int {
    if weight1 + weight2 <= maxW {
        return value1 + value2
    }
    var v = 0
    if weight1 <= maxW {
        v = value1
        if weight2 <= maxW {
            v = max(value1, value2)
        }
    } else {
        if weight2 <= maxW {
            v = value2
        }
    }
    
    return v
}
