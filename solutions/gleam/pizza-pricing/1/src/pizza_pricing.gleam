// TODO: please define the Pizza custom type
pub type Pizza{
  Margherita
  Caprese
  Formaggio
  ExtraSauce(Pizza)
  ExtraToppings(Pizza)
}


pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza{
    Margherita -> 7
    Caprese -> 9
    Formaggio -> 10
    ExtraSauce(p) -> 1 + pizza_price(p)
    ExtraToppings(p) -> 2 + pizza_price(p)
  }
}

pub fn order_price(order: List(Pizza)) -> Int {
  case order{
    [] -> 0
    [one] -> pizza_price(one) + 3
    [first, second] -> pizza_price(first) + pizza_price(second) + 2
    // [first,..rest] -> pizza_price(first) + order_price(rest)
    _ -> order_price_acc(order, 0)
  }
}

fn order_price_acc(order: List(Pizza), acc: Int) -> Int{
  case order{
    [] -> acc
    [first,..rest] -> order_price_acc(rest, acc + pizza_price(first))
  }
}
