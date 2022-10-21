func lengthOfLongestSubstring(_ s: String) -> Int {
    var ans = 0
    var l = 0
    var dict = [Character: Int]()
    let arr = Array(s)

    for i in 0..<arr.count {
        let char = arr[i]
        dict[char, default: 0] += 1

        while let count = dict[char], count > 1 {
            dict[arr[l], default: 0] -= 1
            if dict[arr[l]]! <= 0 { dict[arr[l]] = nil }
            l += 1
        }

        ans = max(ans, dict.count)
    }

    return ans
}

// Time Complexity: O(N)
// Space Complexity: O(1) --> max 26 characters can be stored
