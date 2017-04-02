// https://codefights.com/interview/Bpdq6EYZ6MW586va3
// Amazon, Linked In, Fb... 3000

func productExceptSelf(nums: [Int], m: Int) -> Int {
    let a = nums.map { $0 % m }
    
    // flag[i] = (product when exclude i) % m 
    // NOTE: (exclude i, not a[i])
    // because a[i] <= 100, 
    // so flag should have maximum 100 elements

    var flag: [Int:Int] = [:]
    var g = 0, f = 0
    
    for i in 0..<a.count {
        f = 1
        if let k = flag[a[i]] {
            g += k
        } else {
            for j in 0..<a.count {
                if i != j {
                    f *= (a[j] % m)
                    f %= m
                }
            }
            g += f%m
            flag[a[i]] = f%m
        }
        
        //print(f, g)
    }

    return g % m
}


// translated k_lee's solution

func productExceptSelf2(nums: [Int], m: Int) -> Int {
    var p = 1
    var g = 0
    for i in 0..<nums.count {
        let x = nums[i]
        g = (g * x + p) % m
        p = (p * x) % m
    }
    return g
}