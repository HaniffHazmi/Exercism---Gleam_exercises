import gleam/list

pub fn place_location_to_treasure_location(
  place_location: #(String, Int),
) -> #(Int, String) {
    #(place_location.1,place_location.0)
}

pub fn treasure_location_matches_place_location(
  place_location: #(String, Int),
  treasure_location: #(Int, String),
) -> Bool {
  // let #(name1,length1) = place_location
  // let #(length2,name2) = treasure_location
  case place_location, treasure_location{
    #(n1,l1), #(l2, n2) -> {n1 == n2 && l1 == l2}
  }
  
}

pub fn count_place_treasures(
  place: #(String, #(String, Int)),
  treasures: List(#(String, #(Int, String))),
) -> Int {
  let #(_,#(letter,number)) = place

  list.length(list.filter(treasures, fn(treasure){
    let #(_,#(nums,lets)) = treasure
    {letter == lets} && {number == nums}
  }))
}

pub fn special_case_swap_possible(
  found_treasure: #(String, #(Int, String)),
  place: #(String, #(String, Int)),
  desired_treasure: #(String, #(Int, String)),
) -> Bool {
  let #(found_treasure_name,_) = found_treasure
  let #(place_name,_) = place
  let #(desired_treasure_name,_) = desired_treasure

  case #(found_treasure_name,place_name,desired_treasure_name){
    #("Brass Spyglass","Abandoned Lighthouse",_) -> True
    #("Amethyst Octopus","Stormy Breakwater","Crystal Crab") -> True
    #("Amethyst Octopus","Stormy Breakwater","Glass Starfish")
 -> True
    #("Vintage Pirate Hat","Harbor Managers Office","Model Ship in Large Bottle") -> True
    #("Vintage Pirate Hat","Harbor Managers Office","Antique Glass Fishnet Float") -> True
    _ -> False
  }
}
