import Foundation

func solution(_ n:Int) -> Int {
    /**
     10진수는 Int, 그 외 진수는 String
     String인 3진수로 변환 - 3진수를 reversed() - String인 3진수를 Int인 10진수로 변환
     */
    return Int(String(String(n, radix: 3).reversed()), radix: 3)!
}
