import UIKit

func solution(_ seoul:[String]) -> String {
    var index = 0
    for (ind, str) in seoul.enumerated() {
        if str.elementsEqual("Kim") {
            index = ind
            break
        }
    }
    return "김서방은 \(index)에 있다"
}

let test1 = ["Jane", "Kim"]

print(solution(test1))
