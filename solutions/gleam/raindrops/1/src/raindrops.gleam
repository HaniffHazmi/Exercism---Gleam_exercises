import gleam/int

pub fn convert(number: Int) -> String {
  let pling = case number % 3 == 0 { 
    True -> "Pling"
    False -> ""
  } 
  let plang = case number %  5 == 0{
    True -> "Plang"
    False -> ""
  }
  let plong = case number % 7 == 0 {
    True -> "Plong"
    False -> ""
  }

  let result = pling <> plang <> plong

  case result == "" {
    True -> int.to_string(number)
    False -> result
    }
}