import Foundation

func solution(_ n:Int) -> Int {
     let num = String(n,radix: 3)
    return Int(String(num.reversed()),radix:3)!
}

solution(34)
