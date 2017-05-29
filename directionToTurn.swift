// https://codefights.com/challenge/AR7fRcfMaqK3dm6DM/solutions/FvyNcP927GApFkx3h
// 1000

var directionToTurn: ([Int], pend: [Int], phouse: [Int]) -> Any = {
    //let s = ($1[0] - $0[0]) * ($2[1] - $0[1]) > ($1[1] - $0[1]) * ($2[0] - $0[0])
    //print(s)
    let x = $0[0], y = $0[1]
    return ($1[0] - x) * ($2[1] - y) > ($1[1] - y) * ($2[0] - x) ? "left" : "right"
}
