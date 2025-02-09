let birthday : String = "Birthday"
let valentine : String = "Valentine's Day"
let anniversary : String = "Anniversary"
let space: Character = " "
let exclamation : Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  return "Happy\(space)\(occasion)\(space)\(name)\(exclamation)"
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations\(space)\(name)\(exclamation)\nClass\(space)of\(space)\(year)"
}

func costOf(sign: String) -> Int {
  return 20  + 2  * sign.count
}
