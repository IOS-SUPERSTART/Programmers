import Foundation

func solution(_ nums: [Int]) -> Int {
    
    // 소수인지 확인하는 함수
    func prime(_ n: Int) -> Bool {
        for i in 2..<n {
            if n%i == 0 {  // 나뉘면 소수 아니쥐
                return false
            }
        }
        return true
    }
    
    var sum = [Int]()
    
    // 삼중 포문 말고 좋은 방법 있나....
    for i in 0..<nums.count - 2 {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                sum.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    
    return sum.filter{prime($0)}.count
}
