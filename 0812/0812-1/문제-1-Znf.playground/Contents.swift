import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
  var answer:Int64 = Int64(money)
    
    for i in 0..<count {
        answer -= Int64((i + 1) * price)
    }
    if answer > 0 {
        answer = 0
    }
    return abs(answer)
}
