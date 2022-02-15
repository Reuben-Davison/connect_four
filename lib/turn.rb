require 'pry'
require './lib/board'
require './lib/player'
require "./lib/div"
require "./lib/game"

class Turn
  attr_reader :col_selection, :who_is_playing, :div_to_change, :turn_count, :board

  def initialize(col_selection, board)
    @col_selection = col_selection
    @who_is_playing = who_is_playing
    @div_to_change = nil
    @turn_count = 1
    @board = board

  end

  def input_to_integer(col_selection)
    @div_to_change = nil
    col_selection.upcase!
    if col_selection == "A"
      if @board.a_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.a_array[0]
        @board.a_array.shift
      end
    elsif col_selection == "B"
      if @board.b_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.b_array[0]
        @board.b_array.shift
      end
    elsif col_selection == "C"
      if @board.c_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.c_array[0]
        @board.c_array.shift
      end
    elsif col_selection == "D"
      if @board.d_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.d_array[0]
        @board.d_array.shift
      end
    elsif col_selection == "E"
      if @board.e_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.e_array[0]
        @board.e_array.shift
      end
    elsif col_selection == "F"
      if @board.f_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.f_array[0]
        @board.f_array.shift
      end
    elsif col_selection == "G"
      if @board.g_array.count == 0
        return "That row is full, try again!"
      else
        @div_to_change = @board.g_array[0]
        @board.g_array.shift
      end
    else
      return "Please play the game right" 
    end
    div_to_change
  end

  def place_token(div_to_change)
    if turn_count.odd?
      # binding.pry
      @board.divs[div_to_change] = "X"
      # token = "X"
    else
      @board.divs[div_to_change] = "0"
    end
    game.game_turn +=1

  end

end
