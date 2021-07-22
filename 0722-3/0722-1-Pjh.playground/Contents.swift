import UIKit

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
        var str = String()
        for i in 0..<arr1.count{
            let a = Int(String(arr1[i],radix: 2))!
            let b = Int(String(arr2[i],radix: 2))!
            let c = String(a+b)
            for i in c{
                if i == "1" || i == "2" {
                    str += "#"
                }else{
                    str += " "
                }
            }
            if str.count < n {
                for _ in 0...n-str.count-1{
                    str = " \(str)"
                    print(str)
                }
            }
            answer.append(str)
            str = ""
            }
        return answer
}
