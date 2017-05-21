// https://codefights.com/arcade/intro/level-9/6M57rMTFB9MeDeSWo

func bishopAndPawn(bishop: String, pawn: String) -> Bool {
    var b = bishop.utf8.map { Int($0) }
    var p = pawn.utf8.map{ Int($0) }
    return abs(b[0] - p[0]) == abs(b[1] - p[1])
}
