// https://codefights.com/challenge/nA88LDtnefwn2TYrq
// 1000

let AlphabetStudy: (String, word: String) -> String = {
    let x = $0.utf8.map{$0}
    return $1.utf8.filter{ x.indexOf($0) == nil }.count > 0 ? "No" : "Yes"
    /*
    for c in $1.utf8 {
        if x.indexOf(c) == nil {
            return "No"
        }
    }
    return "Yes"
    */
}
