import Foundation

func solution(_ scores:[[Int]]) -> String {
    var ans = ""
        let nums = scores.count
        for i in 0..<nums {
            var sum = 0
            var list = [Int]()
            let myScore = scores[i][i]
            for j in 0..<nums {
                sum += scores[j][i]
                list.append(scores[j][i])
            }
            let minScore = list.min()!, maxScore = list.max()!
            if minScore == myScore || maxScore == myScore {
                if list.filter({ $0 == myScore}).count == 1 {
                    sum -= myScore
                    list.removeLast()
                }
            }
            let score = Double(sum) / Double(list.count)
            switch score {
            case 90.0...100.0:
                ans += "A"
            case 80.0..<90.0:
                ans += "B"
            case 70.0..<80.0:
                ans += "C"
            case 50.0..<70.0:
                ans += "D"
            default:
                ans += "F"
            }
        }
    return ans
}
