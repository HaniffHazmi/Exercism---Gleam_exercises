// Please define the TreasureChest generic custom type
pub type TreasureChest(a){
  TreasureChest(password: String, treasure: a)
}
// Please define the UnlockResult generic custom type
pub type UnlockResult(b){
  Unlocked(b)
  WrongPassword
}
pub fn get_treasure(chest: TreasureChest(treasure), password: String) -> UnlockResult(treasure) {
  case chest{
    TreasureChest(password: correct_password,treasure: treasure) -> 
      case password == correct_password {
        True -> Unlocked(treasure)
        False -> WrongPassword
    }
  }
}
