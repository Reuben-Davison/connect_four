require "./lib/turn.rb"
class Game
  attr_accessor :next_tokens
  attr_reader :game_turn, :current_token, 
  
  
  def initialize
    @game_board = Board.new
    @game_turn = 1
    @next_tokens = []
  
  end

  def main_menu
    #this method will be used to setup a new game
    # system 'clear'
    puts ' #####  ####### #     # #     # #######  #####  #######       #
#     # #     # ##    # ##    # #       #     #    #          #    #
#       #     # # #   # # #   # #       #          #          #    #
#       #     # #  #  # #  #  # #####   #          #    ##### #    #
#       #     # #   # # #   # # #       #          #          #######
#     # #     # #    ## #    ## #       #     #    #               #
 #####  ####### #     # #     # #######  #####     #               #
                                                                      '
    sleep(1)
    puts " "
    puts "Welcome to Connect-4 \nEnter p to play. Enter q to quit"
    user_input = gets.chomp.downcase

    until ['p', 'q'].include?(user_input)
      p 'Invalid entry. Try again'
      user_input = gets.chomp.downcase
    end
      if user_input == 'p'
        p "Welcome to Connect-4!"
        sleep(1)
        begin_game
      elsif user_input == 'q'
        p 'Have a nice day! Thanks for playing!'
        sleep(3)
        system "quit"
      end
  end
  
  def token_array
    require "pry"; binding.pry
      5.times do
        @next_tokens.concat(["X", "0"])
      end
  end
  
  def current_token
    @next_tokens.shift  
  end
  
    def begin_game
      #this method will go through systematically and call all of the turn and board methods
      # system "clear"
      directions = '
      You will switch back and forth for turns.
      Choose a column by entering any letter between A - G.
      The game board has 42 different slots, so choose wisely!
      The game will end when either the player or computer has 4 in a row!
      GOOD LUCK! Here is the board you will be playing on.'
      puts directions
      token_array
      loop do
        puts "===Turn #{@game_turn}==="
        @game_board.render
        puts "Make your selection now!"
        play_input = gets.chomp
          turn = Turn.new(play_input, @game_board) 
            turn.input_to_integer(turn.col_selection)
            require "pry"; binding.pry
            turn.place_token(turn.div_to_change)
            
            
            
            
            
        # @game_board.render
         @game_turn += 1
      end
      #column selection
      #render board with new token
      #until turn.count == 7 check for winner
      #increase turn counter

      #turn indicator =====turn2======
      #column selection
      #render board
      #check for winner
      #next player
  
    end
end
