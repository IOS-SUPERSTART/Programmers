import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var newReserve = reserve.filter{!lost.contains($0)}
    let realLost = lost.filter{!reserve.contains($0)}.filter{
        if let front = newReserve.firstIndex(of: $0-1) {
            newReserve.remove(at: front)
        } else if let back = newReserve.firstIndex(of: $0+1) {
            newReserve.remove(at: back)
        } else {
            return true
        }
        return false
    }
    return n - realLost.count
}
