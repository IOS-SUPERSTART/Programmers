import Foundation

func solution(_ s:String) -> String {
    var result = ""
    let str = s.components(separatedBy: " ")
  
    for i in 0 ..< str.count{
        for j in 0 ..< str[i].count{
            var index = str[i].index(str[i].startIndex, offsetBy: j)
            if j % 2 == 0{
                result.append(str[i][index].uppercased())
            }else{
                result.append(str[i][index].lowercased())
            }
        }
        result.append(" ")
    }
    result.removeLast()
    return result
}
