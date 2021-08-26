import Foundation

func solution(_ arr:[Int]) -> Double {
    var sum: Int = 0

    for i in arr {
        sum += i
    }

    return Double(sum) / Double(arr.count)
}


solution([1,3,4,5,6,7])
