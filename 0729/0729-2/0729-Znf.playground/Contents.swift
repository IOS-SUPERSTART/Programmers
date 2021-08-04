import UIKit

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    //
    var result = [Int](repeating: 1, count: n)
    reserve.forEach { result[$0-1] += 1 }
    lost.forEach { result[$0-1] -= 1 }
    for i in 0..<result.count {
        if result[i] == 0 {
            if i == 0 {
                if result[i+1] > 1 {
                    result[i+1] -= 1
                    result[i] += 1
                }
            }else if i == result.count - 1 {
                if result[i-1] > 1 {
                    result[i-1] -= 1
                    result[i] += 1
                }
            }else {
                if result[i-1] > 1 {
                    result[i-1] -= 1
                    result[i] += 1
                }else if result[i+1] > 1 {
                    result[i+1] -= 1
                    result[i] += 1
                }
            }
        }
    }
    return result.filter { $0 > 0 }.count
}
