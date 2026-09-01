class WrongNumberOfPlayersError < StandardError ; end
class NoSUchStrategyError < StandardError ; end

def rps_game_winner(game)
  elements_valid = ["S", "P", "R"]
  raise WrongNumberOfPlayersError unless game.length == 2

  player1 = game[0]
  player2 = game[1]

  match1 = player1[1].upcase
  match2 = player2[1].upcase

  raise NoSUchStrategyError unless elements_valid.include?(match1) && elements_valid.include?(match2)

  defeat = {
    "S" => "P",
    "P" => "R",
    "R" => "S"
  }

  if match1 == match2 || defeat[match1] == match2
    player1
  else
    player2
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    return rps_game_winner(tournament)
  end

  winner_left = rps_tournament_winner(tournament[0])
  winner_right = rps_tournament_winner(tournament[1])

  rps_game_winner([winner_left, winner_right])
end

tournment = [
  [
    [ ["Kristen", "P"], ["Dave", "S"] ],
    [ ["Richard", "R"], ["Michael", "S"] ],
  ],
  [
    [ ["Allen", "S"], ["Omer", "P"] ],
    [ ["David E.", "R"], ["Richard X.", "P"] ]
  ]
]

p rps_tournament_winner(tournment)