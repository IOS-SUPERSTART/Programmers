import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let sum = (count + 1) * count / 2
    let total = Int64(price) + Int64(sum)
    
    return max(total - Int64(money), 0)
}
