import UIKit

func solution(_ dartResult:String) -> Int {
    
    let pattern1 = "10|[0-9]"
    let pattern2 = "[SDT][*#]?"
    let arr1 = dartResult.match(pattern1)
    let arr2 = dartResult.match(pattern2)
    var arr3 = Array<Int>(repeating: 0, count: 3)
    for i in 0..<3 {
        var result = 0
        let val = arr2[i][0]
        if val.contains("S") {
            result = Int(arr1[i][0])!
        }else if val.contains("D") {
            result = Int(arr1[i][0])! * Int(arr1[i][0])!
        }else if val.contains("T") {
            result = Int(arr1[i][0])! * Int(arr1[i][0])! * Int(arr1[i][0])!
        }
        if val.contains("*") {
            result = result * 2
            if i > 0 {
                arr3[i-1] = arr3[i-1] * 2
            }
        }else if val.contains("#") {
            result = result * -1
        }
        arr3[i] = result
    }
    return arr3.reduce(0, +)
}
extension String {
    func match(_ regex: String) -> [[String]] {
        let nsString = self as NSString
        return (try? NSRegularExpression(pattern: regex, options: []))?.matches(in: self, options: [], range: NSMakeRange(0, nsString.length)).map { match in
            (0..<match.numberOfRanges).map { match.range(at: $0).location == NSNotFound ? "" : nsString.substring(with: match.range(at: $0)) }
        } ?? []
    }
}
