class Solution {
    func dailyTemperatures(_ temp: [Int]) -> [Int] {
        var nle = [Int]()
        var stack = [temp.count-1]
        
        for i in stride(from: temp.count-1, through: 0, by: -1) {
            let curr = temp[i]
            
            while !stack.isEmpty, curr >= temp[stack.last!] {
                stack.removeLast()
            }
            
            if stack.isEmpty {
                nle.append(0)
            } else {
                nle.append(stack.last! - i)
            }
            stack.append(i)
        }
        
        nle = nle.reversed()

        return nle
    }
}

// Time Complexity: O(N)
// Space Complexity: O(N)
