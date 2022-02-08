class Board
  attr_reader :rows, :columns, :divs, :rows_hash, :render

  def initialize(rows = 6, columns = 7)
    @rows = rows
    @columns = columns
    @divs = {}
    @rows_hash = {
      "row6" => [".", ".", ".", ".", ".", ".", "."],
      "row5" => [".", ".", ".", ".", ".", ".", "."],
      "row4" => [".", ".", ".", ".", ".", ".", "."],
      "row3" => [".", ".", ".", ".", ".", ".", "."],
      "row2" => [".", ".", ".", ".", ".", ".", "."],
      "row1" => [".", ".", ".", ".", ".", ".", "."],
    }
    # new_board = "A B C D E F G\n#{rows_hash["row6"][0]} #{rows_hash["row6"][1]} #{rows_hash["row6"][2]} #{rows_hash["row6"][3]} #{rows_hash["row6"][4]} #{rows_hash["row6"][5]} #{rows_hash["row6"][6]} \n#{rows_hash["row5"][0]} #{rows_hash["row5"][1]} #{rows_hash["row5"][2]} #{rows_hash["row5"][3]} #{rows_hash["row5"][4]} #{rows_hash["row5"][5]} #{rows_hash["row5"][6]} \n#{rows_hash["row4"][0]} #{rows_hash["row4"][1]} #{rows_hash["row4"][2]} #{rows_hash["row4"][3]} #{rows_hash["row4"][4]} #{rows_hash["row4"][5]} #{rows_hash["row4"][6]} \n#{rows_hash["row3"][0]} #{rows_hash["row3"][1]} #{rows_hash["row3"][2]} #{rows_hash["row3"][3]} #{rows_hash["row3"][4]} #{rows_hash["row3"][5]} #{rows_hash["row3"][6]} \n#{rows_hash["row2"][0]} #{rows_hash["row2"][1]} #{rows_hash["row2"][2]} #{rows_hash["row2"][3]} #{rows_hash["row2"][4]} #{rows_hash["row2"][5]} #{rows_hash["row2"][6]} \n#{rows_hash["row1"][0]} #{rows_hash["row1"][1]} #{rows_hash["row1"][2]} #{rows_hash["row1"][3]} #{rows_hash["row1"][4]} #{rows_hash["row1"][5]} #{rows_hash["row1"][6]}\n"
  end


  def render
    new_board = "A B C D E F G\n#{rows_hash["row6"][0]} #{rows_hash["row6"][1]} #{rows_hash["row6"][2]} #{rows_hash["row6"][3]} #{rows_hash["row6"][4]} #{rows_hash["row6"][5]} #{rows_hash["row6"][6]} \n#{rows_hash["row5"][0]} #{rows_hash["row5"][1]} #{rows_hash["row5"][2]} #{rows_hash["row5"][3]} #{rows_hash["row5"][4]} #{rows_hash["row5"][5]} #{rows_hash["row5"][6]} \n#{rows_hash["row4"][0]} #{rows_hash["row4"][1]} #{rows_hash["row4"][2]} #{rows_hash["row4"][3]} #{rows_hash["row4"][4]} #{rows_hash["row4"][5]} #{rows_hash["row4"][6]} \n#{rows_hash["row3"][0]} #{rows_hash["row3"][1]} #{rows_hash["row3"][2]} #{rows_hash["row3"][3]} #{rows_hash["row3"][4]} #{rows_hash["row3"][5]} #{rows_hash["row3"][6]} \n#{rows_hash["row2"][0]} #{rows_hash["row2"][1]} #{rows_hash["row2"][2]} #{rows_hash["row2"][3]} #{rows_hash["row2"][4]} #{rows_hash["row2"][5]} #{rows_hash["row2"][6]} \n#{rows_hash["row1"][0]} #{rows_hash["row1"][1]} #{rows_hash["row1"][2]} #{rows_hash["row1"][3]} #{rows_hash["row1"][4]} #{rows_hash["row1"][5]} #{rows_hash["row1"][6]}\n"
    print new_board
  end
end
