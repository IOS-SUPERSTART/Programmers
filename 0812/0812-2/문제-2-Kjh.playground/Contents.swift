import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return a.enumerated().map{$0.element*b[$0.offset]}.reduce(0, +)
}
