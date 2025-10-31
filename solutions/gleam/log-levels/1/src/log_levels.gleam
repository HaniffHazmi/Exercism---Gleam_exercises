import gleam/string

pub fn message(log_line: String) -> String {
  case log_line{
    "[ERROR]: " <> rest -> string.trim(rest)
    "[WARNING]: " <> rest -> string.trim(rest)
    "[INFO]: " <> rest -> string.trim(rest)
    _ -> "Stuffs"
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line{
    "[ERROR]" <> _rest -> string.lowercase("ERROR")
    "[WARNING]" <> _rest -> string.lowercase("WARNING")
    "[INFO]: " <> _rest -> string.lowercase("INFO")
    _ -> "Stuffs"
  }
}

pub fn reformat(log_line: String) -> String {
  case log_line{
    "[ERROR]: " <> rest -> string.trim(rest) <> " (error)"
    "[WARNING]: " <> rest -> string.trim(rest) <> " (warning)"
    "[INFO]: " <> rest -> string.trim(rest) <> " (info)"
    _ -> "Stuffs"
  }
}
