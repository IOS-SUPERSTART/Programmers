import Foundation

func solution(_ new_id:String) -> String {
    var result = ""
    result = new_id
        .lowercased()
        .replacingOccurrences(of: #"[^\w.-]"#, with: "", options: .regularExpression)
        .replacingOccurrences(of: ".{2,}", with: ".", options: .regularExpression)
        .trimmingCharacters(in: ["."])
    if result == "" {
        result += "a"
    } else if result.count >= 16 {
        let index = result.index(result.startIndex, offsetBy: 15)
        result = String(result[result.startIndex..<index]).trimmingCharacters(in: ["."])
    }
    if result.count <= 2 {
        while result.count < 3 {
            result += "\(result.last!)"
        }
    }
    return result
}
