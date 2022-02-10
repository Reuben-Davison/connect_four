# going to tell the program, what token is currently in the slot. each div will have a significant number/lettter associated so that values can be checked for winner.
class Div
  attr_reader :token,
              :ply1_token,
              :ply2_token,
              :comp_token

  def initialize(token)
    @token = ["."]
    @ply1_token = ["X"]
    @ply2_token = ["O"]
    @comp_token = ["O"]
  end

  def empty?
    if @token == ["."]
      true
    end
  end
end
