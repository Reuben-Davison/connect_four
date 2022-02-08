class Board
  attr_reader :rows, :columns
  
  
  def initialize(rows = 6, columns = 7)
    @rows = rows
    @columns = columns
  end
  
end
