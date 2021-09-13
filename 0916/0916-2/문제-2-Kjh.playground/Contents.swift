import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        let minus = x < 0 ? true : false
        let result = Int("\(minus ? -x : x)".map{String($0)}.reversed().reduce("", +)) ?? 0
        return result == 0 || result < -Int32.max || result >= Int32.max ? 0 : (minus ? -result : result)
    }
}
