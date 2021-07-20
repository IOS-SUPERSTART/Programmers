import UIKit

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    let res1 = getRadix2(n:n, arr: arr1)
    let res2 = getRadix2(n:n, arr: arr2)
    
    for i in 0..<n {
        var str = ""
        for j in 0..<n {
            let val1 = res1[i][j]
            let val2 = res2[i][j]
            if val1 == "0" && val2 == "0" {
                str.append(" ")
            }else {
                str.append("#")
            }
        }
        answer.append(str)
    }
    return answer
}
func getRadix2(n:Int, arr:[Int]) -> [[String]]{
    var result = [[String]]()
    for val in arr {
        var res = String(val, radix: 2)
        while res.count < n {
            res.insert("0", at: res.startIndex)
        }
        let map:[String] = Array(res).map({ String($0) })
        result.append(map)
    }
    return result
}
