import Foundation

/**
 - zip : 두 요소를  나란히 튜플로 생성 -> 두 배열에서 같은 인덱스의 요소를 같이 사용하기 위해.
 - String(_ : , radix: Int) : 진수 변환법 -> 진수 : 몇 수를 증가시켜 자릿수를 올릴건지에 대한 "단위"
 - String(repeating: , count: ) : count만큼 반복해서 String으로 반환 -> OR 연산 결과의 비트 수가 n보다 적을 수 있으므로 확인.
 */
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    return zip(arr1, arr2).map{
        var binary = String($0.0 | $0.1, radix: 2)
        binary = binary.count < n ? String(repeating: "0", count: n - binary.count) + binary : binary
        return binary.replacingOccurrences(of: "0", with: " ").replacingOccurrences(of: "1", with: "#")
    }
}
