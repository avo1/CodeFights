// https://codefights.com/arcade/intro/level-5/g6dc9KJyxmFjB98dL

func areEquallyStrong(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {
    var m = [yourLeft, yourRight].sort(),
    y = [friendsLeft, friendsRight].sort()
    
    return m == y
}
