// https://codefights.com/arcade/code-arcade/at-the-crossroads/7jaup9HprdJno2diw

func tennisSet(score1: Int, score2: Int) -> Bool {
    var s1: Int
    var s2: Int
    if (score1 > score2) {
        s1 = score1
        s2 = score2
    } else {
        s1 = score2
        s2 = score1
    }
    
    if (s1 <= 5) || (s1 > 7) { return false }
    if (s1 == 6) {
        return s2 < 5
    } else { //s1 = 7, only accept 7-6 or 7-5
        return (s2 >= 5) && (s2 <= 6)
    }
    return true
}
