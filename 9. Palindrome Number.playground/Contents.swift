//Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
//
//Example 1:
//
//Input: 121
//Output: true
//Example 2:
//
//Input: -121
//Output: false
//Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
//Example 3:
//
//Input: 10
//Output: false
//Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
//
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0{return false}
        if x >= 0 && x <= 9 { return true }
        var temp = x
        var reverse = 0
        while temp > 0 {
            reverse = reverse * 10 + temp % 10
            temp = temp / 10
        }
        return reverse == x
    }
}
