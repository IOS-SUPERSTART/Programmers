import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var specialBudget = budget
    return d.sorted().filter{
        if specialBudget >= $0 {
            specialBudget -= $0
            return true
        }
        return false
    }.count
}
