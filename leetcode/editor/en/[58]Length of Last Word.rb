#Given a string s consisting of words and spaces, return the length of the last 
#word in the string. 
#
# A word is a maximal substring consisting of non-space characters only. 
#
# 
# Example 1: 
#
# 
#Input: s = "Hello World"
#Output: 5
#Explanation: The last word is "World" with length 5.
# 
#
# Example 2: 
#
# 
#Input: s = "   fly me   to   the moon  "
#Output: 4
#Explanation: The last word is "moon" with length 4.
# 
#
# Example 3: 
#
# 
#Input: s = "luffy is still joyboy"
#Output: 6
#Explanation: The last word is "joyboy" with length 6.
# 
#
# 
# Constraints: 
#
# 
# 1 <= s.length <= 10⁴ 
# s consists of only English letters and spaces ' '. 
# There will be at least one word in s. 
# 
#
# Related Topics String 👍 1601 👎 112


#leetcode submit region begin(Prohibit modification and deletion)
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  # 1. 文字列を空白で分割
  string_array = s.split(" ")
  last_string = string_array[string_array.length - 1]
  last_string.length
  # 2. 配列の最後を抜き取り、文字列を返す
end
#leetcode submit region end(Prohibit modification and deletion)
