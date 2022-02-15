
class Board
  attr_reader :rows, :columns, :divs, :render, :a_array, :b_array, :c_array, :d_array, :e_array, :f_array, :g_array

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
          @divs["#{letter}#{number.to_s}"] = "." 
          # Div.new("#{letter}#{number.to_s}")
        end
      end
    @a_array = ["A1", "A2", "A3", "A4", "A5", "A6"]
    @b_array = ["B1", "B2", "B3", "B4", "B5", "B6"]
    @c_array = ["C1", "C2", "C3", "C4", "C5", "C6"]
    @d_array = ["D1", "D2", "D3", "D4", "D5", "D6"]
    @e_array = ["E1", "E2", "E3", "E4", "E5", "E6"]
    @f_array = ["F1", "F2", "F3", "F4", "F5", "F6"]
    @g_array = ["G1", "G2", "G3", "G4", "G5", "G6"]
  end

  def render
    board = "A B C D E F G \n#{@divs["A6"]} #{@divs["B6"]} #{@divs["C6"]} #{@divs["D6"]} #{@divs["E6"]} #{@divs["F6"]} #{@divs["G6"]} \n#{@divs["A5"]} #{@divs["B5"]} #{@divs["C5"]} #{@divs["D5"]} #{@divs["E5"]} #{@divs["F5"]} #{@divs["G5"]} \n#{@divs["A4"]} #{@divs["B4"]} #{@divs["C4"]} #{@divs["D4"]} #{@divs["E4"]} #{@divs["F4"]} #{@divs["G4"]} \n#{@divs["A3"]} #{@divs["B3"]} #{@divs["C3"]} #{@divs["D3"]} #{@divs["E3"]} #{@divs["F3"]} #{@divs["G3"]} \n#{@divs["A2"]} #{@divs["B2"]} #{@divs["C2"]} #{@divs["D2"]} #{@divs["E2"]} #{@divs["F2"]} #{@divs["G2"]} \n#{@divs["A1"]} #{@divs["B1"]} #{@divs["C1"]} #{@divs["D1"]} #{@divs["E1"]} #{@divs["F1"]} #{@divs["G1"]}\n"
    puts board
    board
  end

end
