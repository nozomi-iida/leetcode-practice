//Write a function to find the longest common prefix string amongst an array of 
//strings. 
//
// If there is no common prefix, return an empty string "". 
//
// 
// Example 1: 
//
// 
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
// 
//
// Example 2: 
//
// 
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.
// 
//
// 
// Constraints: 
//
// 
// 1 <= strs.length <= 200 
// 0 <= strs[i].length <= 200 
// strs[i] consists of only lowercase English letters. 
// 
//
// Related Topics String 👍 9673 👎 3290


//leetcode submit region begin(Prohibit modification and deletion)
function longestCommonPrefix(strs: string[]): string {
  const commonPrefix: string[] = []
  let common = true
  // 1. 最初の配列の文字と他の文字が等しいかチェックする
  // 2. 等しかったら1を繰り返す
  strs[0].split("").forEach((element, idx) => {
    strs.forEach(str => {
      if(common && str.substring(idx, idx + 1) !== element) {
        common = false
      }
    })
    if(common) {
      commonPrefix.push(element)
    } else {
      return;
    }
  })
  return commonPrefix.join("")
}
//leetcode submit region end(Prohibit modification and deletion)
