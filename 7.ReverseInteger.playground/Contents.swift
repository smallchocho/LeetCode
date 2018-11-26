//Given a 32-bit signed integer, reverse digits of an integer.
//
//Example 1:
//
//Input: 123
//Output: 321
//Example 2:
//
//Input: -123
//Output: -321
//Example 3:
//
//Input: 120
//Output: 21
//Note:
//Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
import UIKit
class Solution {
    //21.62 over than
    func reverse(_ x: Int) -> Int {
        var reverseArray:[Character] = Array(String(x)).reversed()
        var isNagive = false
        if reverseArray.last == "-" {
            isNagive = true
            reverseArray.remove(at: reverseArray.count - 1)
        }
        if isNagive { reverseArray.insert("-", at: 0) }
        let result = Int(String(reverseArray))!
        if result > Int32.max { return 0 }
        if result < Int32.min { return 0 }
        return result
    }
    //Most effecient answer
    func reverse2(_ x: Int) -> Int {
        var reverseInt = 0
        var temp = x < 0 ? x * -1 : x
        while temp > 0 {
            reverseInt = reverseInt*10 + temp % 10
            temp = temp/10
        }
        if reverseInt > Int32.max { return 0 }
        if reverseInt < Int32.min { return 0 }
        reverseInt = x < 0 ? reverseInt * -1 : reverseInt
        return reverseInt
    }
}

let s = Solution()
s.reverse2(-111222333)
