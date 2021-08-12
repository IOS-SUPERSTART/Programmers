import Foundation

func solution1(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let total = Array(repeating: price, count: count).enumerated().map{$0.element*($0.offset+1)}.reduce(0, +)
    return Int64((total-money)<=0 ? 0 : total-money)
}

func solution2(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var total = 0
    for i in 1...count {
        total += (price*i)
    }
    return Int64((total-money) <= 0 ? 0 : total-money)
}
