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
    system 'clear'
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
      puts 'Invalid entry. Try again'
      user_input = gets.chomp.downcase
    end
      if user_input == 'p'
        puts "Welcome to Connect-4!"
        sleep(1)
        begin_game
      elsif user_input == 'q'
        puts 'Have a nice day! Thanks for playing!'
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
          break
        end
        puts "===Turn #{@game_turn}==="
        @game_board.render
        puts "Make your selection now!"
        loop do
          play_input = gets.chomp
          turn = Turn.new(play_input, @game_board, player1)
          if turn.valid_input?(play_input) == true
            turn.input_to_integer(turn.col_selection)
            turn.place_token(turn.div_to_change)
            if has_someone_won? == true
              puts "######  #          #    #     # ####### ######
#     # #         # #    #   #  #       #     #
#     # #        #   #    # #   #       #     #
######  #       #     #    #    #####   ######
#       #       #######    #    #       #   #
#       #       #     #    #    #       #    #
#       ####### #     #    #    ####### #     #

#     # ### #     #  #####
#  #  #  #  ##    # #     #
#  #  #  #  # #   # #
#  #  #  #  #  #  #  #####
#  #  #  #  #   # #       #
#  #  #  #  #    ## #     #
 ## ##  ### #     #  #####  "
              puts "=============================="
              puts " #####     #    #     # #######
#     #   # #   ##   ## #
#        #   #  # # # # #
#  #### #     # #  #  # #####
#     # ####### #     # #
#     # #     # #     # #
 #####  #     # #     # #######

####### #     # ####### ######
#     # #     # #       #     #
#     # #     # #       #     #
#     # #     # #####   ######
#     #  #   #  #       #   #
#     #   # #   #       #    #
#######    #    ####### #     # "
              sleep(5)
              abort ("Run `ruby game_runner.rb` to play again!")
            end
            break
          elsif turn.valid_input?(play_input) == false
            puts "Please make a correct selection."
          end
        end
        @game_turn += 1
        sleep(1)
        puts "Sit back while the computer makes a choice!"
        sleep(1)
        puts "===Turn #{@game_turn}==="
        @game_board.render
        loop do
          play_input = comp_array.sample
            turn = Turn.new(play_input, @game_board, computer)
            if turn.valid_input?(play_input) == true
              turn.input_to_integer(turn.col_selection)
              turn.place_token(turn.div_to_change)
              if has_someone_won? == true
                puts " #####  ####### #     # ######  #     # ####### ####### ######
#     # #     # ##   ## #     # #     #    #    #       #     #
#       #     # # # # # #     # #     #    #    #       #     #
#       #     # #  #  # ######  #     #    #    #####   ######
#       #     # #     # #       #     #    #    #       #   #
#     # #     # #     # #       #     #    #    #       #    #
 #####  ####### #     # #        #####     #    ####### #     #

#     # ### #     #  #####
#  #  #  #  ##    # #     #
#  #  #  #  # #   # #
#  #  #  #  #  #  #  #####
#  #  #  #  #   # #       #
#  #  #  #  #    ## #     #
 ## ##  ### #     #  #####  "
              puts "=============================="
              puts "#####     #    #     # #######
#     #   # #   ##   ## #
#        #   #  # # # # #
#  #### #     # #  #  # #####
#     # ####### #     # #
#     # #     # #     # #
 #####  #     # #     # #######

####### #     # ####### ######
#     # #     # #       #     #
#     # #     # #       #     #
#     # #     # #####   ######
#     #  #   #  #       #   #
#     #   # #   #       #    #
#######    #    ####### #     # "
sleep(5)
abort ("Run `ruby game_runner.rb` to play again!")
              end
              break
            end
        end
        @game_turn += 1
        # if has_someone_won? == true
        #   puts "Someone has won!"
        # end
      end
    end


    def v_winner?
      l_hash = {"A"=>[], "B"=>[], "C"=>[], "D"=>[], "E"=>[], "F"=>[], "G"=>[]}
      @game_board.divs.each do|key, value|
         letter = (key.chop)
          l_hash[letter] << value
        end

      l_hash.each do |key, value|
        if l_hash[key].join.include?("XXXX" || "OOOO")
          return true
        end
      end
    end

    def h_winner?
      n_hash = {"1"=>[], "2"=>[], "3"=>[], "4"=>[], "5"=>[], "6"=>[]}
      @game_board.divs.each do|key, value|
        number = key[-1]
        n_hash[number] << value
      end

      n_hash.each do |key, value|
        if n_hash[key].join.include?("XXXX" || "OOOO")
          return true
        end
      end
    end


    def d_winner?
      big_hash = {"1"=>[], "2"=>[], "3"=>[], "4"=>[], "5"=>[], "6"=>[],
                  "7"=>[], "8"=>[], "9"=>[], "10"=>[], "11"=>[], "12"=>[]}

      diag = { 1 => ["D6", "C5", "B4", "A3"],
               2 => ["E6", "D5", "C4", "B3", "A2"],
               3 => ["F6", "E5", "D4", "C3", "B2", "A1"],
               4 => ["G6", "F5", "E4", "D3", "C2", "B1"],
               5 => ["G5", "F4", "E3", "D2", "C1"],
               6 => ["G4", "F3", "E2", "D1"],
               7 => ["A4", "B3", "C2", "D1"],
               8 => ["A5", "B4", "C3", "D2", "E1"],
               9 => ["A6", "B5", "C4", "D3", "E2", "F1"],
               10 => ["B6", "C5", "D4", "E3", "F2", "G1"],
               11 => ["C6", "D5", "E4", "F3", "G2"],
               12 => ["D6", "E5", "F4", "G3"]
              }

      @game_board.divs.each do |key, value|
        diag.each do |d_key, d_val|
          if d_val.include?(key)
            # require "pry"; binding.pry
            big_hash[d_key.to_s] << value
          end
        end
        big_hash.each do |key, value|
          if big_hash[key].join.include?("XXXX" || "OOOO")
            return true
          end
        end
      end
    end



    def has_someone_won?
      if v_winner? == true || h_winner? == true  || d_winner? == true
        true
      else
        false
      end
    end
end
