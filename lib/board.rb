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
    board = "A B C D E F G \n#{@divs["A6"].render} #{@divs["B6"].render} #{@divs["C6"].render} #{@divs["D6"].render} #{@divs["E6"].render} #{@divs["F6"].render} #{@divs["G6"].render} \n#{@divs["A5"].render} #{@divs["B5"].render} #{@divs["C5"].render} #{@divs["D5"].render} #{@divs["E5"].render} #{@divs["F5"].render} #{@divs["G5"].render} \n#{@divs["A4"].render} #{@divs["B4"].render} #{@divs["C4"].render} #{@divs["D4"].render} #{@divs["E4"].render} #{@divs["F4"].render} #{@divs["G4"].render} \n#{@divs["A3"].render} #{@divs["B3"].render} #{@divs["C3"].render} #{@divs["D3"].render} #{@divs["E3"].render} #{@divs["F3"].render} #{@divs["G3"].render} \n#{@divs["A2"].render} #{@divs["B2"].render} #{@divs["C2"].render} #{@divs["D2"].render} #{@divs["E2"].render} #{@divs["F2"].render} #{@divs["G2"].render} \n#{@divs["A1"].render} #{@divs["B1"].render} #{@divs["C1"].render} #{@divs["D1"].render} #{@divs["E1"].render} #{@divs["F1"].render} #{@divs["G1"].render}\n"
    puts board
    board
  end
end
