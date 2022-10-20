func isValidSudoku(_ board: [[Character]]) -> Bool {
    for row in 0..<9 {
        var set = Set<Character>()
        for i in 0..<9 where board[i][row] != "." {
            let num = board[i][row]
            if set.contains(num) { return false }
            set.insert(num)
        }
    }
    for i in 0..<9 {
        var set = Set<Character>()
        for row in 0..<9 where board[i][row] != "." {
            let num = board[i][row]
            if set.contains(num) { return false }
            set.insert(num)
        }
    }
    for row in stride(from: 0, through: 6, by: 3) {
        for col in stride(from: 0, through: 6, by: 3) {
            var set = Set<Character>()
            for i in row..<row+3 {
                for j in col..<col+3 where board[i][j] != "." {
                    let num = board[i][j]
                    if set.contains(num) { return false }
                    set.insert(num)
                }
            }
        }
    }
    return true
}

// Time Complexity: O(1)
