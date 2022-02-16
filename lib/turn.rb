# require 'pry'
require "rspec"
require './lib/board'
require './lib/player'
require "./lib/div"
require "./lib/game"

class Turn
  attr_reader :col_selection, :who_is_playing, :div_to_change, :turn_count, :board, :valid_input

  def initialize(col_selection, board, who_is_playing)
    @col_selection = col_selection
    @who_is_playing = who_is_playing
    @div_to_change = nil
    @turn_count = 1
    @board = board
    @who_is_playing = @who_is_playing
    @valid_input = true
  end

  def input_to_integer(col_selection)
    @div_to_change = nil
    col_selection.upcase!
    if col_selection == "A"
      if @board.a_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.a_array[0]
        @board.a_array.shift
      end
    elsif col_selection == "B"
      if @board.b_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.b_array[0]
        @board.b_array.shift
      end
    elsif col_selection == "C"
      if @board.c_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.c_array[0]
        @board.c_array.shift
      end
    elsif col_selection == "D"
      if @board.d_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.d_array[0]
        @board.d_array.shift
      end
    elsif col_selection == "E"
      if @board.e_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.e_array[0]
        @board.e_array.shift
      end
    elsif col_selection == "F"
      if @board.f_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.f_array[0]
        @board.f_array.shift
      end
    elsif col_selection == "G"
      if @board.g_array.count == 0
        print "That row is full, try again!"
      else
        @div_to_change = @board.g_array[0]
        @board.g_array.shift
      end
    else
      puts "Please play the game right"
    end
    div_to_change
  end

  def place_token(div_to_change)
    @board.divs[div_to_change] = @who_is_playing.token
  end

  def valid_input?(col_selection)
    #a method tobreak the turn and not increase turncount if incorrect /invalid input
    col_selection.upcase!
    if col_selection == "A" && @board.a_array.count == 0
      false
    elsif col_selection == "B" && @board.b_array.count == 0
      false
    elsif col_selection == "C" && @board.c_array.count == 0
      false
    elsif col_selection == "D" && @board.d_array.count == 0
      false
    elsif col_selection == "E" && @board.e_array.count == 0
      false
    elsif col_selection == "F" && @board.f_array.count == 0
      false
    elsif col_selection == "G" && @board.g_array.count == 0
      false
    elsif col_selection != "A"|| "B" || "C" || "D" || "F" || "G"
      false
    else
      true
    end
  end
end
