import Foundation


// 근데 프로그래머스에서 실패나옴 >.<....
// > 이후 단순연산하면 시간초과 나오고 딕셔너리 사용해야함을 알게됨
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var resultTouple = [(Int, Double)]()
    var resultDic = Dictionary<Int, Int>()
    var count = 0
    
    (1...N+1).forEach { resultDic[$0] = 0 }
    
    stages.forEach { score in
        resultDic[score]! += 1
    }
    
    resultDic.sorted(by: <).forEach { dic in
        if (1...N).contains(dic.key) {
            resultTouple.append((dic.key ,Double(dic.value) / Double(stages.count - count)))
            count += dic.value
        }
    }
    
    return resultTouple.sorted { $0.1 > $1.1 }.map { $0.0 }
}


let result = solution(5, [2, 1, 2, 6, 2, 4, 3, 3])


