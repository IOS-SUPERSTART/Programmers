import Foundation

func solution(_ new_id:String) -> String {
    var tmp = [Character](), arr = new_id.map({ Character($0.lowercased()) })
    
    // 2단계
    arr = arr.filter{  $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }

    // 3단계
    for i in arr {
        if tmp.last == "." && tmp.last == i {
            
        } else {
            tmp.append(i)
        }
    }
    arr = tmp

    // 4단계
    arr = arr.map{ String($0) }.joined().trimmingCharacters(in: ["."]).map{ Character(extendedGraphemeClusterLiteral: $0) }
    
    arr = arr.map{ String($0) }.joined().trimmingCharacters(in: ["."]).map{ Character(extendedGraphemeClusterLiteral: $0) }
    
    arr = arr.count == 0 ? ["a"] : arr

    // 6단계
    arr = arr.count > 15 ? Array(arr[0..<15]) : arr
    if arr.last == "." {
        arr.removeLast()
    }

    // 7단계
    while !arr.isEmpty && arr.count < 3 {
        arr.append(arr.last!)
    }
    
    return arr.map{ String($0) }.joined()
}
