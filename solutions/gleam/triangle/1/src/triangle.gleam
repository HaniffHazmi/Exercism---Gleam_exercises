pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {
  a >. 0.0 && b>. 0.0 && c >. 0.0 && a == b && a == c && b == c
  
}

pub fn isosceles(a: Float, b: Float, c: Float) -> Bool {
  {a >. 0.0 && b>. 0.0 && c >. 0.0} && {a +. b >=. c && a +. c >=. b && b +. c >=. a } && {a == b || a == c || b == c}

}

pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
   {a != b && a != c && b != c} && {a >. 0.0 && b>. 0.0 && c >. 0.0} && {a +. b >=. c && a +. c >=. b && b +. c >=. a }
}
