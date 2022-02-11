class Turn 
  attr_reader :col_selection, :who_is_playing, :column
  
  
  def initialize(col_selection, who_is_playing)
    @col_selection = col_selection
    @who_is_playing = who_is_playing
    @column = 0
  end




  def input_to_integer(col_selection)
    @column = 0
    col_selection.upcase!
  
    if col_selection == "A" 
      @column = 1
    elsif col_selection == "B" 
      @column = 2
    elsif col_selection == "C"
      @column = 3
    elsif col_selection == "D"
      @column = 4
    elsif col_selection == "E"
      @column = 5
    elsif col_selection == "F"
      @column = 6
    elsif col_selection == "G"
      @column = 7
    else 
      print "Please play the game right"
    end
    @column
  end   
  
  
  
  
  # 
  # def place_token(column, turn_owner)
  # 
  # 
  #   until div.empty == true
  #   row_number = 0
  #   rows_hash.reverse[row_number]
  #     if div.empty == true
  #       div.token = who_is_playing.token
  #     else
  #       row_number += 1
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
