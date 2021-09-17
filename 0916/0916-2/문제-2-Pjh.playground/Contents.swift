import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        let sValue = String(x)
        var value = String(sValue.reversed())
        
        if sValue.hasPrefix("-") {
            value.removeFirst()
            value.insert("-", at: value.startIndex)
        }
        
        if let iValue = Int32(value) {
            return Int(iValue)
        }
        return 0
    }
}
