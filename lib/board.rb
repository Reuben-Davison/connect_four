class Board
  attr_reader :rows, :columns, :divs, :render

  def initialize(rows = 6, columns = 7)
    @rows = rows
    @columns = columns
    @divs = {}
    @letters = "A".."G"
    @letters.to_a
    @numbers = 1..6
    @numbers.to_a
      @letters.each do |letter|
        @numbers.each do |number|
          @divs["#{letter}#{number.to_s}"] = Div.new("#{letter}#{number.to_s}")
        end
      end
  end

  def place_token(column, turn_owner)
    if turn_owner == player1 && divs.token == "."
      divs[column].token == "X"
    elsif turn_owner == computer && divs.token == "."
      divs[column].token == "0"
    else
    end
  end

  def render
    board = "A B C D E F G \n#{@divs["A6"].token} #{@divs["B6"].token} #{@divs["C6"].token} #{@divs["D6"].token} #{@divs["E6"].token} #{@divs["F6"].token} #{@divs["G6"].token} \n#{@divs["A5"].token} #{@divs["B5"].token} #{@divs["C5"].token} #{@divs["D5"].token} #{@divs["E5"].token} #{@divs["F5"].token} #{@divs["G5"].token} \n#{@divs["A4"].token} #{@divs["B4"].token} #{@divs["C4"].token} #{@divs["D4"].token} #{@divs["E4"].token} #{@divs["F4"].token} #{@divs["G4"].token} \n#{@divs["A3"].token} #{@divs["B3"].token} #{@divs["C3"].token} #{@divs["D3"].token} #{@divs["E3"].token} #{@divs["F3"].token} #{@divs["G3"].token} \n#{@divs["A2"].token} #{@divs["B2"].token} #{@divs["C2"].token} #{@divs["D2"].token} #{@divs["E2"].token} #{@divs["F2"].token} #{@divs["G2"].token} \n#{@divs["A1"].token} #{@divs["B1"].token} #{@divs["C1"].token} #{@divs["D1"].token} #{@divs["E1"].token} #{@divs["F1"].token} #{@divs["G1"].token}\n"
    puts board
    board
  end
end
