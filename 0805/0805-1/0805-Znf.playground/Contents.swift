import UIKit

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
     
    var arr = Array<(stage:Int, goal:Double, pass:Double)>()
    for i in 0..<N {
        arr.append((stage: i+1, goal: 0, pass: 0))
    }
    stages.forEach { stage in
        for i in 0..<arr.count {
            if arr[i].stage < stage {
                arr[i].goal += 1
                arr[i].pass += 1
            }else if arr[i].stage == stage {
                arr[i].goal += 1
            }
        }
    }
    arr.sort(by: { (($0.goal - $0.pass) / $0.goal) > (($1.goal - $1.pass) / $1.goal) } )
    return arr.compactMap { $0.stage }
}
