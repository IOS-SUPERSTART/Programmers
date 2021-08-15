import Foundation

func calculateScore(_ scores: [Int]) -> String {
    switch scores.reduce(0, +)/scores.count {
    case 90...: return "A"
    case 80..<90: return "B"
    case 70..<80: return "C"
    case 50..<70: return "D"
    case ..<50: return "F"
    default: return "F"
    }
}

func solution(_ scores:[[Int]]) -> String {
    let result = scores.enumerated().map{ score1 -> String in
        var realScore = score1.element.enumerated().map{ score2 in scores[score2.offset][score1.offset] }.sorted()
        if realScore[realScore.count-1] == scores[score1.offset][score1.offset], realScore[realScore.count-2] != scores[score1.offset][score1.offset] {
            realScore.removeLast()
        } else if realScore[0] == scores[score1.offset][score1.offset], realScore[1] != scores[score1.offset][score1.offset] {
            realScore.removeFirst()
        }
        return calculateScore(realScore)
    }
    return result.joined()
}
