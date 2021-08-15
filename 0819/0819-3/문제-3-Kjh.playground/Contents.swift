import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return signs.enumerated().map{return $0.element ? absolutes[$0.offset] : -absolutes[$0.offset]}.reduce(0, +)
}
