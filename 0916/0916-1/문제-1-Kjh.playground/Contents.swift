import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var results = [Int]()
        nums.enumerated().forEach{ a in
            if let index = nums.firstIndex(of: (target-a.element)), index != a.offset {
                results = [a.offset, index]
            }
        }
        return results.sorted()
    }
}
