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
# 1 <= n <= 10â¹ 
# 
#
# Related Topics Math Sorting Counting Enumeration ð 1131 ð 278


#leetcode submit region begin(Prohibit modification and deletion)
# @param {Integer} n
# @return {Boolean}
def reordered_power_of2(n)
  @power_of_2 = 0
  @count = 0
  # 2ã®ç´¯ä¹ãã«ã¼ããã
  while true
    # nã¨ã²ã¨ãè¦ãªã£ããtrueãè¿ã
    @power_of_2 = 2**@count
    @count += 1
    if @power_of_2 == n
      return true
      break
    end
    # nããã2ã®ç´¯ä¹ãå¤§ãããªã£ããè¾ãã
    if @power_of_2 > n
      return false
      break
    end
  end
end
#leetcode submit region end(Prohibit modification and deletion)
