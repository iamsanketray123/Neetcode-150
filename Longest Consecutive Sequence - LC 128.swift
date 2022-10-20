  func longestConsecutive(_ nums: [Int]) -> Int {
      var set = Set<Int>(); var dp = [Int: Int]()
      var ans = 0
      for num in nums { set.insert(num) }

      for num in nums {
          ans = max(ans, dfs(num, set, &dp))
      }

      return ans
  }

  func dfs(_ num: Int, _ set: Set<Int>, _ dp: inout [Int: Int]) -> Int {
      if !set.contains(num) {
          return 0
      }

      if let val = dp[num] {
          return val
      }

      dp[num] = 1 + dfs(num-1, set, &dp)

      return dp[num]!
  }

// Time Complexity: O(N)
// Space Complexity: O(N)
