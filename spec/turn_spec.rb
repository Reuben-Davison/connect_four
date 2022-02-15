require "pry"
require "rspec"
require "./lib/player"
require "./lib/div"
require "./lib/board"
require "./lib/turn"

RSpec.describe Turn do

    it "exists" do
      board1 = Board.new
      player1 = Player.new("Ralph")
      turn1 = Turn.new("b", board1)

      expect(turn1).to be_an_instance_of(Turn)
      expect(turn1.col_selection).to eq("b")
      # expect(turn1.who_is_playing).to eq(player1)
    end


    it "test input to input_to_integer " do
      board1 = Board.new
      player1 = Player.new("Ralph")
      turn1 = Turn.new("g", board1)
    # binding.pry

      expect(turn1.input_to_integer("G")).to eq("G1")
      turn2 = Turn.new("g", board1)
      expect(turn2.input_to_integer("G")).to eq("G2")
      turn3 = Turn.new("g", board1)
      expect(turn3.input_to_integer("G")).to eq("G3")
      turn4 = Turn.new("g", board1)
      expect(turn4.input_to_integer("G")).to eq("G4")
      turn5 = Turn.new("g", board1)
      expect(turn5.input_to_integer("G")).to eq("G5")
      turn6 = Turn.new("g", board1)
      expect(turn6.input_to_integer("G")).to eq("G6")
      turn7 = Turn.new("g", board1)
      # binding.pry
      expect(turn7.input_to_integer("G")).to eq("That row is full, try again!")
    end

    it "changes the board based on col_selection" do
      player1 = Player.new("Ralph")
      board1 = Board.new
      turn1 = Turn.new("b", board1)
      turn1.place_token("B1")

      expect(board1.divs["B1"].token).to eq ("X")
    end
    
    it "can see if input is invalid" do
      player1 = Player.new("Ralph")
      turn1 = Turn.new("i", player1)
      board = Board.new
      expect(turn1.input_to_integer(turn1.col_selection)).to eq("Please play the game right")
    end

    xit 'can list the elements in each column' do
      player1 = Player.new("Ralph")
      board = Board.new
      turn1 = Turn.new("b", player1)

      expect(turn1.a_array).to eq(["A1", "A2", "A3", "A4", "A5", "A6"])
    end
end
