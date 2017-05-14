// https://codefights.com/arcade/intro/level-7/8PxjMSncp9ApA4DAb

func depositProfit(deposit: Int, rate: Int, threshold: Int) -> Int {
    // deposit*(1+rate)^n >= threshold
    // (1+rate)^n >= t/d -> n >= log(t/d) / log(1+rate)
    let t = Double(threshold), d = Double(deposit), r = Double(rate)/100,
    n = log(t/d) / log(1+r)
            
    return n - Double(Int(n)) < 1e-6 ? Int(n) : Int(n) + 1
    
}
