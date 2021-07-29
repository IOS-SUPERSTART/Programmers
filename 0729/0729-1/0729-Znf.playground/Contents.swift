import UIKit

func solution(_ s:String) -> Int {
    var result = s
    let dictionary:[String : String] = ["one" : "1",
                                        "two" : "2",
                                        "three" : "3",
                                        "four" : "4",
                                        "five" : "5",
                                        "six" : "6",
                                        "seven" : "7",
                                        "eight" : "8",
                                        "nine" : "9",
                                        "zero" : "0" ]
    
    for key in dictionary.keys {
        result = update(str: result, key: key, value: dictionary[key] ?? "")
    }
    
    return Int(result) ?? 0
}

func update(str:String, key:String, value:String) -> String {
    do {
        let range = NSRange(location: 0, length: str.count)
        let regex = try NSRegularExpression(pattern: key)
        return regex.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: value)
    }catch {
        return str
    }
}


let test1 = "one4seveneight"
let test2 = "23four5six7"
let test3 = "2three45sixseven"
let test4 = "123"

print(solution(test1))
print(solution(test2))
print(solution(test3))
print(solution(test4))
