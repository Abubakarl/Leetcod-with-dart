/*
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".



Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.


Constraints:

1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters.
*/

class Solution {
  String longestCommonPrefix(List<String> strs) {
    List longestCommonPrefixSet = [];
    for (int i = 0; i < strs[0].length; i++) {
      int count = 0;
      for (int j = 0; j < strs.length; j++) {
        if (i >= strs[j].length) {
          return longestCommonPrefixSet.join();
        }
        if (strs[0][i] == strs[j][i]) {
          count++;
          // longestCommonPrefixSet.add(strs[j][i]);
          if (count == strs.length) {
            longestCommonPrefixSet.add(strs[j][i]);
          }
        } else {
          return longestCommonPrefixSet.join();
        }
      }
    }
    return longestCommonPrefixSet.join();
  }
}

void main(List<String> args) {
  print(
    Solution().longestCommonPrefix(["f"]),
  );
  print(
    Solution().longestCommonPrefix(["ab", "a"]),
  );
  print(
    Solution().longestCommonPrefix(["aa", "aa"]),
  );
  print(
    Solution().longestCommonPrefix(["flower", "flow", "flight"]),
  );
  print(
    Solution().longestCommonPrefix(["dog", "racecar", "car"]),
  );
}
