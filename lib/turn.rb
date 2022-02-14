require 'pry'
require './lib/board'
require './lib/player'
require "./lib/div"

class Turn
  attr_reader :col_selection, :who_is_playing, :div_to_change, :turn_count, :board

  def initialize(col_selection, board)
    @col_selection = col_selection
    @who_is_playing = who_is_playing
    @div_to_change = nil
    @turn_count = 0
    @board = board
  end

  def input_to_integer(col_selection)
    @div_to_change = nil
    col_selection.upcase!
    if col_selection == "A"
      if a_array == []
        puts "That row is full, try again!"
      else
        @div_to_change = a_array[0]
      end
    elsif col_selection == "B"
      if b_array.count == 0
        puts "That row is full, try again!"
      else
      @div_to_change = b_array[0]
      end
    elsif col_selection == "C"
      if c_array.count == 0
        puts "That row is full, try again!"
      else
      @div_to_change = c_array[0]
     end
    elsif col_selection == "D"
      if d_array.count == 0
        puts "That row is full, try again!"
      else
      @div_to_change = d_array[0]
      end
    elsif col_selection == "E"
      if e_array.count == 0
        puts "That row is full, try again!"
      else
      @div_to_change = e_array[0]
      end
    elsif col_selection == "F"
      if f_array.count == 0
        puts "That row is full, try again!"
      else
      @div_to_change = f_array[0]
      end
    elsif col_selection == "G"
      if @board.g_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.g_array[0]
        # board.g_array(div_to_change)[]=
        @board.g_array.shift
      end
    else
      print "Please play the game right"
      if @board.board_array[0][@column][0].empty? == false
        print "Pick an empty column"
    end
    div_to_change
  end

  def place_token(div_to_change, turn_count)
    @turn_count += 1
    # div.include?(div_to_change)
    if turn_count.odd?
      token = "X"
    else
      token = "O"
    end

    @divs[div_to_change].token

#take the first value from a specific array, and then change it, and remove the location from  the original array
  end

  # def  winner method
end
