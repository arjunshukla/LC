/*
 Remove Duplicates from Sorted Array
 */


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var uniqueNum = nums[0]
        for(i, num) in nums.enumerated() {
            if i > 0 && num == uniqueNum {
                print("\(i), \(num), \(uniqueNum)")
//                nums.remove(at: i)
            } else {
                uniqueNum = num
            }
        }
        print(nums)
        return nums.count
    }
    
    func removeDuplicatesSolved(_ nums: inout [Int]) -> Int {
        var i = 0
        for j in 1..<nums.count {
            if j<nums.count && nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
                nums.remove(at: j)
            }
        }
        return nums.count
    }
    
    func removeDuplicatesMySolve1(_ nums: inout [Int]) -> Int {
        for i in 1..<nums.count {
            if i < nums.count && nums[i] == nums[i-1] {
                print("Removing: \(i): \(nums[i])")
                nums.remove(at: i)
            }
//            print(i,nums)
        }
        return nums.count
    }
    
    func removeDuplicatesMySolve2(_ nums: inout [Int]) -> Int {
        for var i in 1..<nums.count {
            if i < nums.count && nums[i] == nums[i-1] {
                print("Removing: \(i): \(nums[i])")
                nums.remove(at: i)
                i -= 1
            }
//            print(i,nums)
        }
        return nums.count
    }
    
    func removeDuplicatesMySolve3(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty && nums.count > 1 else {
            return nums.count
        }
        var hasDuplicates = true
        var i = 1
        while hasDuplicates {
            if nums[i] == nums[i-1]  {
                print("Removing \(i)")
                nums.remove(at: i)
                i = i-1
            }
            i += 1
            if i == nums.count {
                hasDuplicates = false
            }
        }
        return nums.count
    }
}

var nums = [1]//[0,0,1,1,1,2,2,3,3,3,3,4]
print(nums)
print(Solution().removeDuplicatesMySolve3(&nums))
print(nums)
