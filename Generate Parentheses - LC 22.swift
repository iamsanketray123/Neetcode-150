class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var ans = [String]()
        solve(n, n, [String](), &ans)
        return ans
    }
    func solve(_ opened: Int, _ closed: Int, _ arr: [String], _ ans: inout [String]) {
        
        if opened + closed == 0 {
            ans.append(arr.joined(separator: ""))
            return
        }
        
        if opened <= closed {
            
            if opened > 0 {
                var copy1 = arr 
                copy1.append("(")
                solve(opened-1, closed, copy1, &ans)   
            }
            
            var copy2 = arr
            copy2.append(")")
            solve(opened, closed-1, copy2, &ans)
        }
    }
}

// Time Complexity: O(2^N)
