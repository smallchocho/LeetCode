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
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        if strs.isEmpty { return "" }
//        if strs.count == 1 { return strs.first! }
//        var minCount:Int!
//        var result = ""
//        var isSame = false
//        for str in strs{
//            if minCount == nil || minCount >= str.count{ minCount = str.count }
//        }
//        if minCount == 0 {return ""}
//        for i1 in 0 ..< minCount{
//            var lastStr:String!
//            for i2 in 0 ..< strs.count{
//                if lastStr == nil {
//                    lastStr = strs[i2]
//                    continue
//                }
//                if Array(lastStr)[i1] == Array(strs[i2])[i1]{
//                    if i2 == (strs.count - 1){
//                        isSame = true
//                        result += String(Array(strs[i2])[i1])
//                    }
//                    lastStr = strs[i2]
//                }
//            }
//            if !isSame { break }
//        }
//        return result
//    }
    
    
}
//let s = Solution()
//print(s.longestCommonPrefix( ["c","acc","ccc"]))
let c = Int("abc", radix: 26)!
let d = Int("bc", radix: 26)!
let f = Int("bc", radix: 26)!
let e = c - f
let g = c - d
let x = 2 * c - d - f
print(String(e, radix: 26, uppercase: false))
print(String(g, radix: 26, uppercase: false))
print(String(x, radix: 26, uppercase: false))
//1.reverse後轉換為26進位
//2.最大數乘以(總數-1) - 其他所有數目
//3.2的結果算出有幾個0，此值為N
//4.從原陣列裡面隨便抓一個取出前面N個字元就是答案
let strs = ["c","acc","ccc"]
for str in strs{
    
}
