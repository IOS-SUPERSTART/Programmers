import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result:Set<Int> = []
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            let value = numbers[i] + numbers[j]
            result.insert(value)
        }
    }
    return Array(result).sorted()
}
