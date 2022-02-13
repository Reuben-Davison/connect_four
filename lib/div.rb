# going to tell the program, what token is currently in the slot. each div will have a significant number/lettter associated so that values can be checked for winner.
class Div
  attr_reader :token

  def initialize(location, token = ".")
    @location = location
    @token = token
  end
#the turns can  only go up to 42 before a draw. set each turn to a different div gets.chomp, and we can then tell what turn we are on as well.

  def empty?
    if token == ('.')
      true
    elsif token == ('X') || token == ('O')
      false
    end
    #should we say token == (player1) or token == (computer), then  that can be used in  the render method.
  end

  def render
    if empty?
      @token = "."
    end
  end

  #needs a render method to  reveal if  token should  be . X or O
end

# total_turns = 42
# turn1 = user_input << Div.new("X") #gets.chomp in the runner file
# if user_input = "A", 'a'
