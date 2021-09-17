import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var num = x
        var reverseNum = 0
        
        while num > 0 {
            let i = num % 10
            reverseNum = reverseNum * 10 + i
            num = num / 10
        }
        
        return x == reverseNum
    }
}
