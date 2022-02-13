# going to tell the program, what token is currently in the slot. each div will have a significant number/lettter associated so that values can be checked for winner.
class Div
  attr_reader :token, :location

  def initialize(location, token = ".")
    @location = location
    #can make lines of code to  extrapolate that say B2 is actually = 9 a1 = 1 b1 = 2 etc. 
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

  # def render
  #   token
  # end
  #is this redundant because we have token = token so we could just call  token
  #needs a render method to  reveal if  token should  be . X or O
end
