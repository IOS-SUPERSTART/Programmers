import UIKit

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
             let value = (nums[i]+nums[j]+nums[k])
                if isPrime(num: value) {
                    answer += 1
                }
            }
            
        }
    }
    
    return answer
}
func isPrime(num:Int) -> Bool {
    var isPrime = true
    for i in 2...Int(sqrt(Double(num))) {
        if num != i && num % i == 0 {
            isPrime = false
            break
        }
    }
    return isPrime
}
