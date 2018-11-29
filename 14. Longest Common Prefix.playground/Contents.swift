//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".
//
//Example 1:
//
//Input: ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.
import UIKit
class Solution {
    func longestCommonPrefix(_ strs:[String]) -> String {
        if strs.count == 0 { return ""}
        if strs.count == 1{ return strs.first!}
        var prefix = strs[0]
        for i in 1 ... (strs.count-1){
            if strs[i] == "" {
                return ""
            }
            while strs[i].count < prefix.count || strs[i].dropLast(strs[i].count - prefix.count) != prefix {
                prefix = String(prefix.dropLast(1))
                if prefix.isEmpty{return ""}
            }
        }
        return prefix
    }
}

