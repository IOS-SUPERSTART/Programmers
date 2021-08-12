import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var ans: [Int] = []
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            if !ans.contains(numbers[i] + numbers[j]) {
                ans.append(numbers[i] + numbers[j])
            }
        }
    }
    return ans.sorted()
}
