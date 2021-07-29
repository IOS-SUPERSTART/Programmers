import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var losted = lost.filter{!reserve.contains($0)}
    var borrowes = reserve.filter{!lost.contains($0)}

    var ans = n - losted.count

    for i in 0..<losted.count {
        var x: Int?

        for i in 0..<borrowes.count {
            if losted[i] == borrowes[i] - 1 || losted[i] == borrowes[i] + 1 {
                x = i
                break
            }
        }

        if let index = x {
            borrowes.remove(at: index)
            ans += 1
        }
    }

    return ans
}
