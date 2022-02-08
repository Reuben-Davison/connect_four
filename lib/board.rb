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
    
  
  # binding.pry
  return "ABCDEFG \n#{rows_hash["row6"]}"
  end
end
