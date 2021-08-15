import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map{word in return word.enumerated().map{
        if $0.offset%2 == 0 {
            return $0.element.uppercased()
        } else {
            return $0.element.lowercased()
        }
    }.joined()}.joined(separator: " ")
}
