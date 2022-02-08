class Board
  attr_reader :rows, :columns, :divs, :rows_hash


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
  end

  def render
    print "ABCDEFG \n#{rows_hash["row6"]} \n#{rows_hash["row6"]} \n#{rows_hash["row5"]} \n#{rows_hash["row4"]} \n#{rows_hash["row3"]} \n#{rows_hash["row2"]} \n#{rows_hash["row1"]}"
  end
end
