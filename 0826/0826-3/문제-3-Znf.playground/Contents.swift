import UIKit
func solution(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0, +)
    return Double(sum)/Double(arr.count)
}
