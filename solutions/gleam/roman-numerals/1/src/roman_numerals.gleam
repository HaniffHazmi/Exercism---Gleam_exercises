pub fn convert(number: Int) -> String {
  convert_inner(number, roman_map(), "")
}

fn roman_map() -> List(#(Int,String)){
  [
#(1000, "M"),
#(900, "CM"),
#(500, "D"),
#(400, "CD"),
#(100, "C"),
#(90, "XC"),
#(50, "L"),
#(40, "XL"),
#(10, "X"),
#(9, "IX"),
#(5, "V"),
#(4, "IV"),
#(1, "I"),
  ]
}

fn convert_inner(int: Int, mappings: List(#(Int,String)),acc: String) -> String{
  case mappings{
    [] -> acc
    [#(value,string),..rest] -> case int >= value{
        True -> convert_inner(int - value, mappings, acc <> string)
        False -> convert_inner(int, rest, acc)
    }
  }

}
