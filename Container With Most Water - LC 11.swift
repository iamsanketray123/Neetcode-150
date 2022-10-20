func maxArea(_ height: [Int]) -> Int {
    var ans = 0
    var left = 0
    var right = height.count-1

    while left < right {
        let lval = height[left]
        let rval = height[right]
        let h = min(lval, rval)
        let dist = right-left
        let area = dist*h
        ans = max(area, ans)

        if lval < rval {
            left += 1
        } else {
            right -= 1
        }
    }
    return ans
}

// Time Complexity: O(N)
