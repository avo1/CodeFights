// https://codefights.com/challenge/mphk8gHzaN5KQAJij
// 3000

func sumSquares(k: Int64) -> Int {
    var r = 0
    
    if k > 0 {
        for j in 1...k {
            if j*j > k { break } 
            let y = Int64(sqrt(Double(k - j*j)))
            r += y*y + j*j < k ? 0 : 1
        }
        
    }
    
    return r
}
