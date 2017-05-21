// https://codefights.com/arcade/intro/level-9/xHvruDnQCx7mYom3T

func growingPlant(upSpeed: Int, downSpeed: Int, desiredHeight: Int) -> Int {
    let d = desiredHeight - upSpeed
    if d <= 0 {
        return 1
    }
    return (d-1) / (upSpeed - downSpeed) + 2
}
