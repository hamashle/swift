func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func checkPassword(pw: String) -> String {
        guard pw == password else {return "Sorry. No hidden secrets here." }
        return secret
    }
    return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstNumber = f(room)
  let secondNumber = f(firstNumber)
  let thirdNumber = f(secondNumber)
  return (firstNumber, secondNumber, thirdNumber)
}
