import UIKit

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let zeroCount = lottos.filter({ $0 == 0 }).count
    var equals = 0
    for num in win_nums {
        for lotto in lottos {
            if num == lotto {
                equals += 1
            }
        }
    }
    let max = equals + zeroCount
    let min = equals
    
    return [toString(max), toString(min)]
}

func toString(_ num:Int) -> Int {
    switch num {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}

let value = (lottos:[44,1,0,0,31,25], win_nums:[31,10,45,1,6,19])
print(solution(value.lottos, value.win_nums))

let value2 = (lottos:[0,0,0,0,0,0], win_nums:[31,10,45,1,6,19])
print(solution(value2.lottos, value2.win_nums))

let value3 = (lottos:[45,4,35,20,3,9], win_nums:[20,9,3,45,4,35])
print(solution(value3.lottos, value3.win_nums))
