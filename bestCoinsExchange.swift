// https://codefights.com/challenge/vFup7mXP4Sdfpx6TY

let bestCoinsExchange: ([Int], change: Int) -> [[Int]] = {
  var n = $0.count, m = $1,
  c = [[Int]](), t = [0], r = [[Int]]()
  /*
   c[i, j] = the # of coins when change $j using coins[0]...coins[i]
   c[0, j] = inf, impossible
   c[i, 0] = 0
   c[i, j] = c[i-1, j] if j < coins[i] (coins[i] can't be used)
   c[i, j] = min(c[i-1, j], 1+ C[i, j-coins[i]]) either not using coins[i], or using 1 more coin
   */

  for i in 0...n {
    t += [0]

    var a = [0]
    for j in 1...m {
      a += [m+1]
    }
    c += [a]
  }

  // DP
  for i in 1...n {
    let a = $0[i-1]
    for j in 0...m {
      if j < a {
        c[i][j] = c[i-1][j]
      } else {
        c[i][j] = min(c[i-1][j], 1+c[i][j-a])
      }
    }
  }

  // trace back
  var s = c[n][m]
  while m > 0 {
    let a = $0[n-1]
    if m >= a && c[n][m - a] < s {  
        m -= a
        t[n-1]++
        s--   
    } else {
      n--
    }
  }
  //print(t)

  for i in 0..<$0.count {
    if t[i] > 0 {
      r = [ [$0[i], t[i]] ] + r
    }
  }
  return r
}