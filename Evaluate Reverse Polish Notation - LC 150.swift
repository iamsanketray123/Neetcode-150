func evalRPN(_ tokens: [String]) -> Int {
    var stack = [String]()

    for token in tokens {
        if let num = Int(token) {
            stack.append(token)
        } else {
            if let n2 = Int(stack.removeLast()),
               let n1 = Int(stack.removeLast()) {

                if token == "+" {
                    let sum = n1 + n2
                    stack.append("\(sum)")
                } else if token == "-" {
                    let sub = n1-n2
                    stack.append("\(sub)")
                } else if token == "*" {
                    let mult = n1*n2
                    stack.append("\(mult)")
                } else {
                    let div = n1/n2
                    stack.append("\(div)")
                }
            }
        }
    }
    return Int(stack[0])!
}

// Time Complexity: O(N)
