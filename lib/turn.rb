require 'pry'
require './lib/board'
require './lib/player'
require "./lib/div"

class Turn 
  attr_reader :col_selection, :who_is_playing, :column
  
  
  def initialize(col_selection, who_is_playing = Player.new, board = Board.new)
    @col_selection = col_selection
    @who_is_playing = who_is_playing
    @column = nil
    @board = board
  end

  def col_selection
    gets.chomp
    
  end


  def input_to_integer(col_selection)
    @column = nil
    col_selection.upcase!
  
    if col_selection == "A" 
      @column = 0
    elsif col_selection == "B" 
      @column = 1
    elsif col_selection == "C"
      @column = 2
    elsif col_selection == "D"
      @column = 3
    elsif col_selection == "E"
      @column = 4
    elsif col_selection == "F"
      @column = 5
    elsif col_selection == "G"
      @column = 6
    else 
      print "Please play the game right"
      if @board.board_array[0][@column][0].empty? == false
        print "Pick an empty column"
    end
    @column
  end   
  
  
  def flip_board
    @board.board_array.reverse
    
  end
  
  def place_token(column, who_is_playing)
    row_number = 0

      until flip_board.rows_hash[row_number][column][0].empty? == true
        row_number += 1
      end 
      @board.rows_hash[row_number][column][0] = who_is_playing.token
   
  end
  # 
  # 
  # 
  # 
  #     if turn_owner == player1 && token == "."
  #       token == "X"
  #     elsif turn_owner == computer && token == "."
  #       token == "0"
  #     else
  #   end
  # end
  # 


end
