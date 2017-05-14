// https://codefights.com/arcade/intro/level-2/bq2XnSr5kbHqpHGJC

func makeArrayConsecutive2(statues: [Int]) -> Int {
    var a = statues.sort()
    return a.last! - a.first! + 1 - a.count
}
