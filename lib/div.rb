class Div
# going to tell the program, what token is currently in the slot. each div will have a significant number/lettter associated so that values can be checked for winner.
  def initialize(token)
    @token = "."
    @player1_token = "X"
    @player2_token = "O"
    @computer = "O"
  end
end
