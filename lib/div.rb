# going to tell the program, what token is currently in the slot. each div will have a significant number/lettter associated so that values can be checked for winner.
class Div
  attr_reader :token

  def initialize(token)
    @token = token
  end
#the turns can  only go up to 42 before a draw. set each turn to a different div gets.chomp, and we can then tell what turn we are on as well.

  def empty?
    if @token == ('.')
      true
    else
      false
    end
  end
# I feel like this needs to go under the turn class

end
