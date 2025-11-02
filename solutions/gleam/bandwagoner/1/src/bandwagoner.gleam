// TODO: please define the 'Coach' type
pub type Coach{
  Coach(
    name: String,
    former_player: Bool,
  )
}
// TODO: please define the 'Stats' type
pub type Stats{
  Stats(
    wins: Int,
    losses: Int,
  )
}
// TODO: please define the 'Team' type
pub type Team{
  Team(
    name: String,
    coach: Coach,
    stats: Stats,
  )
}
pub fn create_coach(name: String, former_player: Bool) -> Coach {
  let coach = Coach(name: name, former_player: former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  let stats = Stats(wins: wins, losses: losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  let team = Team(name: name, coach: coach, stats: stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  let update = Team(..team,coach: coach)
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  home_team == away_team
}

pub fn root_for_team(team: Team) -> Bool {
  case team{
    Team(coach: Coach(name: "Gregg Popovich",..),..) -> True
    Team(coach: Coach(former_player: True,..),..) -> True
    Team(name: "Chicago Bulls",..) -> True
    Team(stats: Stats(wins,losses),..) if wins >= 60 -> True
    Team(stats: Stats(wins,losses),..) if losses > wins -> True
    _ -> False
  }
}
