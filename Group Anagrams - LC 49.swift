
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict = [[Int]: [String]]()
    for str in strs {
        var arr = Array(repeating: 0, count: 26)
        for char in str {
            let i = Int(char.asciiValue!) - 97
            arr[i] += 1
        }
        dict[arr, default: [String]()].append(str)
    }
    return Array(dict.values)
}

/* Constraints:

1 <= strs.length <= 10^4
0 <= strs[i].length <= 100
strs[i] consists of lowercase English letters.

*/

// Time Complexity - O(N * K) => K = max length of strs[i]
// Space Complexity - O(N * K) => K = max length of strs[i]
