// https://codefights.com/challenge/YuBsjap3TBQN42nLk/solutions/Z8w4rXTq5ofuGbDP9
// 2000

func GroupedBits(n: Int) -> Int {
    var s = 0, i = n
    
    for ; i > 0; i /= 2 {
        s += i%4%3%2
    }
    
    return s
}