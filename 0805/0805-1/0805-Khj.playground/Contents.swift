import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failureLates = [(Int, Double)]()
    for stage in 1...N {
        let failureCount = stages.filter{$0 == stage}.count
        let challengerCount = stages.filter{$0 >= stage}.count
        failureLates.append((stage, failureCount == 0 || challengerCount == 0 ? 0 : Double(failureCount)/Double(challengerCount)))
    }
    return failureLates.sorted{$0.1>$1.1}.map{$0.0}
}
