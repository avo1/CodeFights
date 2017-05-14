// https://codefights.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP

func areSimilar(A: [Int], B: [Int]) -> Bool {
    if A.count != B.count {
        return false
    }
    
    var x = 0, c = [[0, 0], [0, 0]]
    for i in 0..<A.count {
        if A[i] != B[i] {
            x += 1
            if x > 2 {
                return false
            }
            
            c[x-1][0] = A[i]
            c[x-1][1] = B[i]
        }
    }
    
    return c[0][0] == c[1][1] && c[0][1] == c[1][0]
}
