import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let nums = [("zero", "0"), ("one", "1"), ("two", "2"), ("three", "3"), ("four", "4"), ("five", "5"), ("six", "6"), ("seven", "7"), ("eight", "8"), ("nine", "9")]
    nums.forEach{
        while result.range(of: $0.0) != nil {
            if let range = result.range(of: $0.0) {
                result = result.replacingOccurrences(of: $0.0, with: $0.1, range: range)
            }
        }
    }
    return Int(result) ?? 0
}
