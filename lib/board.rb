class Board
  attr_reader :rows, :columns, :divs, :rows_hash, :render

  def initialize(rows = 6, columns = 7)
    @rows = rows
    @columns = columns
    @divs = {
        }
    @rows_hash = {
      "row6" => [[Div.new("."), 36], [Div.new("."), 37], [Div.new("."), 38], [Div.new("."), 39], [Div.new("."), 40], [Div.new("."), 41], [Div.new("."), 42]],
      "row5" => [[Div.new("."), 29], [Div.new("."), 30], [Div.new("."), 31], [Div.new("."), 32], [Div.new("."), 33], [Div.new("."), 34], [Div.new("."), 35]],
      "row4" => [[Div.new("."), 22], [Div.new("."), 23], [Div.new("."), 24], [Div.new("."), 25], [Div.new("."), 26], [Div.new("."), 27], [Div.new("."), 28]],
      "row3" => [[Div.new("."), 15], [Div.new("."), 16], [Div.new("."), 17], [Div.new("."), 18], [Div.new("."), 19], [Div.new("."), 20], [Div.new("."), 21]],
      "row2" => [[Div.new("."), 8], [Div.new("."), 9], [Div.new("."), 10], [Div.new("."), 11], [Div.new("."), 12], [Div.new("."), 13], [Div.new("."), 14]],
      "row1" => [[Div.new("."), 1], [Div.new("."), 2], [Div.new("."), 3], [Div.new("."), 4], [Div.new("."), 5], [Div.new("."), 6], [Div.new("."), 7]]
    }
    # @letters = "A".."G"
    # @letters.to_a
    # player and computer inputs will change the hashes value to either X or O and the location will be removed from a block of
  end

  # def create_div_bank
  #   42.times do |div|
  #     div.new(".")
  #   end
  # end

  def render
    new_board = "A B C D E F G\n#{rows_hash["row6"][0][0]} #{rows_hash["row6"][1][0]} #{rows_hash["row6"][2][0]} #{rows_hash["row6"][3][0]} #{rows_hash["row6"][4][0]} #{rows_hash["row6"][5][0]} #{rows_hash["row6"][6][0]} \n#{rows_hash["row5"][0]} #{rows_hash["row5"][1][0]} #{rows_hash["row5"][2][0]} #{rows_hash["row5"][3][0]} #{rows_hash["row5"][4][0]} #{rows_hash["row5"][5][0]} #{rows_hash["row5"][6][0]} \n#{rows_hash["row4"][0][0]} #{rows_hash["row4"][1][0]} #{rows_hash["row4"][2][0]} #{rows_hash["row4"][3][0]} #{rows_hash["row4"][4][0]} #{rows_hash["row4"][5][0]} #{rows_hash["row4"][6][0]} \n#{rows_hash["row3"][0][0]} #{rows_hash["row3"][1][0]} #{rows_hash["row3"][2][0]} #{rows_hash["row3"][3][0]} #{rows_hash["row3"][4][0]} #{rows_hash["row3"][5][0]} #{rows_hash["row3"][6][0]} \n#{rows_hash["row2"][0][0]} #{rows_hash["row2"][1][0]} #{rows_hash["row2"][2][0]} #{rows_hash["row2"][3][0]} #{rows_hash["row2"][4][0]} #{rows_hash["row2"][5][0]} #{rows_hash["row2"][6][0]} \n#{rows_hash["row1"][0][0]} #{rows_hash["row1"][1][0]} #{rows_hash["row1"][2][0]} #{rows_hash["row1"][3][0]} #{rows_hash["row1"][4][0]} #{rows_hash["row1"][5][0]} #{rows_hash["row1"][6][0]}\n"
    # new_board
  end
end
