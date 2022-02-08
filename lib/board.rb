class Board
  attr_reader :rows, :columns, :divs
  
  
  def initialize(rows = 6, columns = 7)
    @rows = rows
    @columns = columns
    @divs = {}
  end
  
end
