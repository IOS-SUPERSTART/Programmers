import Foundation

func solution1(_ numbers:[Int]) -> [Int] {
    var answer = [Int]()
    for a in 0..<numbers.count {
        for b in a+1..<numbers.count {
            answer.append(numbers[a]+numbers[b])
        }
    }
    return Array(Set(answer)).sorted()
}
