#Given a sorted array of distinct integers and a target value, return the index 
#if the target is found. If not, return the index where it would be if it were 
#inserted in order. 
#
# You must write an algorithm with O(log n) runtime complexity. 
#
# 
# Example 1: 
#
# 
#Input: nums = [1,3,5,6], target = 5
#Output: 2
# 
#
# Example 2: 
#
# 
#Input: nums = [1,3,5,6], target = 2
#Output: 1
# 
#
# Example 3: 
#
# 
#Input: nums = [1,3,5,6], target = 7
#Output: 4
# 
#
# 
# Constraints: 
#
# 
# 1 <= nums.length <= 10⁴ 
# -10⁴ <= nums[i] <= 10⁴ 
# nums contains distinct values sorted in ascending order. 
# -10⁴ <= target <= 10⁴ 
# 
#
# Related Topics Array Binary Search 👍 9265 👎 456


#leetcode submit region begin(Prohibit modification and deletion)
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    # もしnumsの中にtargetがあればどこにあるかを返す
    if nums.include?(target)
        nums.index{ |num| num === target}
    else
    # なかったらnumsのどこに入るべきかを返す
    # 前の値よりも大きければ次へいく小さければそこに入れる
        index = 0
        for num in nums
            if num > target
                break
            end
            index += 1
        end
        index
    end
end
#leetcode submit region end(Prohibit modification and deletion)
