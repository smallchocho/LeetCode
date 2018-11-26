//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//Example:
//
//Given nums = [2, 7, 11, 15], target = 9,
//
//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].
class Solution {
    //Force Answer
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var firstIndex:Int!
        var secondIndex:Int!
        for i1 in 0 ..< nums.count {
            let firstNum = nums[i1]
            for i2 in 0 ..< nums.count{
                guard i1 != i2 else{ continue }
                guard firstNum + nums[i2] == target else{ continue }
                secondIndex = i2
                firstIndex = i1
            }
        }
        return [firstIndex,secondIndex]
    }
    //Efficient Answer
    static func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var dic:[Int:Int] = [:]
        for i in 0 ..< nums.count{
            dic[nums[i]] = i
        }
        for i1 in 0 ..< nums.count{
            let d = target - nums[i1]
            if let i2 = dic[d] {
                if i2 == i1 {
                    continue
                }else{
                    return [i1,i2]
                }
            }
        }
        return [0,0]
    }
}
let target = 6
let nums = [3,3]
Solution.twoSum2(nums, target)
//Efficient Answer



