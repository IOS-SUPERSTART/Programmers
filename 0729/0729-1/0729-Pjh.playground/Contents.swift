import Foundation

// 참고함 
func solution(_ s:String) -> Int {
    let hash = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var str = s

    for i in 0...9 {
        str = str.replacingOccurrences(of: hash[i], with: String(i))
    }

    return Int(str)!
}
