class Player
  attr_reader :token

  def initialize(token)
    @token = token
  end

  # def token_to_use
  #   binding.pry
  #   if type == [:human]
  #     @token = "X"
  #   elsif type == [:computer]
  #     @token = "O"
  #   end
  # end
end
