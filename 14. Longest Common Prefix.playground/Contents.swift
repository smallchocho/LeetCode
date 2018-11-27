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
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var minCount:Int!
        var result = ""
        for str in strs{
            if minCount == nil || minCount >= str.count{ minCount = str.count }
        }
        print(minCount)
        if minCount == 0 {return ""}
        for i1 in 0 ..< minCount{
            var lastStr = ""
            for i2 in 0 ..< strs.count{
                if lastStr.isEmpty {
                    lastStr = strs[i]
                }
                
                if Array(lastStr)[i] == Array(str)[i]{
                    if str == strs.last{
                        result += String(Array(lastStr)[i])
                    }
                    continue
                }
                
            }
        }
        return result
    }
}
let s = Solution()
print(s.longestCommonPrefix( ["c","c"]))

