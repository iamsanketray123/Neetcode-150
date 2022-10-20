func productExceptSelf(_ nums: [Int]) -> [Int] {
    var left = [nums[0]]
    var right = [nums.last!]
    for i in 1..<nums.count {
        left.append(left.last! * nums[i])
    }
    for i in stride(from: nums.count-2, through: 0, by: -1) {
        right.append(right.last! * nums[i])
    }
    right = right.reversed()
    var ans = [Int]()

    for i in 0..<nums.count {
        if i == 0 {
            ans.append(right[1])
        } else if i == nums.count - 1 {
            ans.append(left[nums.count-2])
        } else {
            ans.append(left[i-1]*right[i+1])
        }
    }

    return ans
}

// Time Completexity: O(N)
// Space Complexity: O(N)
