import Foundation

func rank(_ count: Int) -> Int {
    switch count {
    case 0, 1: return 6
    case 2: return 5
    case 3: return 4
    case 4: return 3
    case 5: return 2
    case 6: return 1
    default: return 0
    }
}

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let matchCount = lottos.filter{win_nums.contains($0)}.count
    return [rank(matchCount + lottos.filter{$0==0}.count), rank(matchCount)]
}
