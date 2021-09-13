import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        return "\(x)".map{String($0)}.reversed().reduce("", +) == "\(x)"
    }
}
