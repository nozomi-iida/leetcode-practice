#You are given an integer n. We reorder the digits in any order (including the 
#original order) such that the leading digit is not zero. 
#
# Return true if and only if we can do this so that the resulting number is a 
#power of two. 
#
# 
# Example 1: 
#
# 
#Input: n = 1
#Output: true
# 
#
# Example 2: 
#
# 
#Input: n = 10
#Output: false
# 
#
# 
# Constraints: 
#
# 
# 1 <= n <= 10⁹ 
# 
#
# Related Topics Math Sorting Counting Enumeration 👍 1131 👎 278


#leetcode submit region begin(Prohibit modification and deletion)
# @param {Integer} n
# @return {Boolean}
def reordered_power_of2(n)
  @power_of_2 = 0
  @count = 0
  # 2の累乗をループする
  while true
    # nとひとし苦なったらtrueを返す
    @power_of_2 = 2**@count
    @count += 1
    if @power_of_2 == n
      return true
      break
    end
    # nよりも2の累乗が大きくなったら辞める
    if @power_of_2 > n
      return false
      break
    end
  end
end
#leetcode submit region end(Prohibit modification and deletion)
