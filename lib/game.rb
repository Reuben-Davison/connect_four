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
      @game_board.divs.each do|key, value|
        l = key[0]
          if l == "A"
            key[0] = 0
          elsif l == "B"
            key[0] =1
          elsif l == "C"
            key[0] =2
          elsif l == "D"
            key[0] =3
          elsif l == "E"
            key[0] =4
          elsif l == "F"
            key[0] =5
          elsif l == "G"
            key[0] =6
          end
        n_hash[number] << value
      n_hash.each do |key, value|
        (value.join).include?("XXXX" || "0000")
        return true
      end
    end
    end

    def has_someone_won?
      if v_winner? == true || h_winner? == true 
        true
      else
        false
      end
    end
end
