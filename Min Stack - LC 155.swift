class MinStack {

  var stack = [(Int, Int)]()

  init() {

  }

  func push(_ val: Int) {
      if stack.isEmpty {
          stack.append((val,val))
      } else {
          stack.append((val, min(stack.last!.1,val)))
      }
  }

  func pop() {
      stack.removeLast()
  }

  func top() -> Int {
      return stack.last!.0
  }

  func getMin() -> Int {
      return stack.last!.1
  }
}
