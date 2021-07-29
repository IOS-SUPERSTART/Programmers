import UIKit


func solution(_ newId:String) -> String {
    var result = newId
    // step 1
    result = step1(result)
//    print("step 1 : \(result)")
    // step 2
    result = step2(result)
//    print("step 2 : \(result)")
    // step 3
    result = step3(result)
//    print("step 3 : \(result)")
    // step 4
    result = step4(result)
//    print("step 4 : \(result)")
    // step 5
    result = step5(result)
//    print("step 5 : \(result)")
    // step 6
    result = step6(result)
//    print("step 6 : \(result)")
    // step 7
    result = step7(result)
//    print("step 7 : \(result)")
    
    return result
}

func step1(_ result:String) -> String {
    return result.lowercased()
}

func step2(_ result:String) -> String {
    let charSet = CharacterSet(charactersIn: "01234567890abcdefghijklmnopqrstuvwxyz-_.")
    let value = result.components(separatedBy: charSet.inverted).joined()
    return value
}

func step3(_ result:String) -> String{
    var value = result
    while(value.contains("..")) {
        value = value.replacingOccurrences(of: "..", with: ".")
    }
    return value
}

func step4(_ result:String) -> String{
    var value = result
    while (value.hasPrefix(".")) {
        value.removeFirst()
    }
    while(value.hasSuffix(".")) {
        value.removeLast()
    }
    return value
}

func step5(_ result:String) -> String {
    return result.count == 0 ? "a" : result
}

func step6(_ result:String) -> String {
    if result.count > 15 {
        let value = result[...result.index(result.startIndex, offsetBy: 14)]
        return step4(String(value))
    }else {
        return result
    }
}

func step7(_ result:String) -> String {
    var value = result
    while value.count < 3 {
        value.append(value.last!)
    }
    return value
}

let value1 = "...!@BaT#*..y.abcdefghijklm"
print(solution(value1))
let value2 = "z-+.^."
print(solution(value2))
let value3 = "=.="
print(solution(value3))
let value4 = "123_.def"
print(solution(value4))
let value5 = "abcdefghijklmn.p"
print(solution(value5))



