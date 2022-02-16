require "./lib/turn.rb"
require 'pry'
class Game
  attr_reader :game_turn, :current_token, :comp_array, :game_board

  def initialize
    @game_board = Board.new
    @game_turn = 0
    @comp_array = ["A", "B", "C", "D", "E", "F", "G"]
    #maxchoicesfor the computer
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


    def begin_game
      player1 = Player.new("X")
      computer = Player.new("O")
      #this method will go through systematically and call all of the turn and board methods
      # system "clear"
      directions = '
      You will switch back and forth for turns.
      Choose a column by entering any letter between A - G.
      The game board has 42 different slots, so choose wisely!
      The game will end when either the player or computer has 4 in a row!
      GOOD LUCK! Here is the board you will be playing on.'
      puts directions
      loop do
        if @game_turn > 42
          puts "===========DRAW==========="
          puts "Thanks for playing! Have a great day!"
          # gets.chomp
          # if user_input == 'p'
          #   begin_game
          # else
          #   puts "Have a nice day!"
          # end
          # sleep(5)
          # break
        else
        end
        p "===Turn #{@game_turn}==="
        @game_board.render
        p "Make your selection now!"
        loop do
          play_input = gets.chomp
          turn = Turn.new(play_input, @game_board, player1)
          if turn.valid_input?(play_input) == true
            turn.input_to_integer(turn.col_selection)
            turn.place_token(turn.div_to_change)
            break
          elsif turn.valid_input?(play_input) == false
            p "Please make a correct selection."
          end
        end
        @game_turn += 1
        sleep(1)
        p "Sit back while the computer makes a choice!"
        sleep(1)
        p "===Turn #{@game_turn}==="
        @game_board.render
        loop do
          play_input = comp_array.sample
            turn = Turn.new(play_input, @game_board, computer)
            if turn.valid_input?(play_input) == true
              turn.input_to_integer(turn.col_selection)
              turn.place_token(turn.div_to_change)
              break
            end
        end
        @game_turn += 1
      end
    end
    
    
    def winner?
      arrays = {"A"=>[], "B"=>[], "C"=>[], "D"=>[], "E"=>[], "F"=>[], "G"=>[]}
      letters = ["A", "B", "C", "D", "E", "F", "G"]
      @game_board.divs.each do|key, value|
        if (key.chop) == letters.each do |letter|
          arrays[letter] << value
        end
        end
      
        require "pry"; binding.pry
      array.each do |key, value|
        (value.join).include?("XXXX" || "0000")
        return true
      
      end
    end
    
    
    end     
end
