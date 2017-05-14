// https://codefights.com/arcade/intro/level-5/XC9Q2DhRRKQrfLhb5

func avoidObstacles(inputArray: [Int]) -> Int {
    var a = inputArray.sort(), step = 1
    
    for step in 2...(a.last! + 1) {
        var p = 0, flag = true
        while p <= a.last! {
            if a.contains(p) {
                flag = false
                break
            } else {
                p += step
            }
        }
        
        if flag {
            return step
        }
    }
    
    return step
}
