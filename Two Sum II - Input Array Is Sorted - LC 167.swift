func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0; var right = numbers.count-1

    while left < right {
        let sum = numbers[left] + numbers[right]
        // we have to make sure it doesn't overflow
        // let numbers[left] + numbers[right] < Int.max
        // numbers[left] < Int.max - numbers[right]
        if numbers[left] > 0, numbers[right] > 0, numbers[left] >= Int.max - numbers[right] {
            right -= 1
            continue
        }
        if sum < target {
            left += 1 
        } else if sum > target {
            right -= 1
        } else {
            return [left+1,right+1]
        }
    }
    return []
}

// Time Complexity: O(N)
