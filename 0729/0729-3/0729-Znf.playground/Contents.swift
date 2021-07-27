import Foundation


func solution(_ d:[Int], _ budget:Int) -> Int {
    let arr = d.sorted()
    var result = 0
    var money = budget
    for ar in arr {
        if money - ar < 0 {
            break
        }
        money -= ar
        result += 1
    }
    return result
}


let test1 = (d: [1,3,2,5,4], budget: 9)
let test2 = (d: [2,2,3,3], budget: 10)

print(solution(test1.d, test1.budget))
print(solution(test2.d, test2.budget))
