// https://codefights.com/arcade/intro/level-6/t97bpjfrMDZH8GJhi

func chessBoardCellColor(cell1: String, cell2: String) -> Bool {
    var c1 = Array(cell1.utf8).first! - 64, r1 = Array(cell1.utf8).last! - 48
    var c2 = Array(cell2.utf8).first! - 64, r2 = Array(cell2.utf8).last! - 48
    
    return (c1+r1) % 2 == (c2+r2) % 2
}
