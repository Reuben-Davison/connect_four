
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
          @divs["#{letter}#{number.to_s}"] = Div.new("#{letter}#{number.to_s}")
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
    board = "A B C D E F G \n#{@divs["A6"].token} #{@divs["B6"].token} #{@divs["C6"].token} #{@divs["D6"].token} #{@divs["E6"].token} #{@divs["F6"].token} #{@divs["G6"].token} \n#{@divs["A5"].token} #{@divs["B5"].token} #{@divs["C5"].token} #{@divs["D5"].token} #{@divs["E5"].token} #{@divs["F5"].token} #{@divs["G5"].token} \n#{@divs["A4"].token} #{@divs["B4"].token} #{@divs["C4"].token} #{@divs["D4"].token} #{@divs["E4"].token} #{@divs["F4"].token} #{@divs["G4"].token} \n#{@divs["A3"].token} #{@divs["B3"].token} #{@divs["C3"].token} #{@divs["D3"].token} #{@divs["E3"].token} #{@divs["F3"].token} #{@divs["G3"].token} \n#{@divs["A2"].token} #{@divs["B2"].token} #{@divs["C2"].token} #{@divs["D2"].token} #{@divs["E2"].token} #{@divs["F2"].token} #{@divs["G2"].token} \n#{@divs["A1"].token} #{@divs["B1"].token} #{@divs["C1"].token} #{@divs["D1"].token} #{@divs["E1"].token} #{@divs["F1"].token} #{@divs["G1"].token}\n"
    puts board
    board
  end

end
