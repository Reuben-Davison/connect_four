require "pry"
require "rspec"
require "./lib/player"
require "./lib/div"
require "./lib/board"
require "./lib/turn"

RSpec.describe Turn do

    it "exists" do
      board1 = Board.new
      player1 = Player.new("X")
      turn1 = Turn.new("b", board1, player1)

      expect(turn1).to be_an_instance_of(Turn)
      expect(turn1.col_selection).to eq("b")
      # expect(turn1.who_is_playing).to eq(player1)
    end


    it "test input to input_to_integer " do
      board1 = Board.new
      player1 = Player.new("X")
      turn1 = Turn.new("g", board1, player1)

      expect(turn1.input_to_integer("G")).to eq("G1")
    end

    it "changes the board based on col_selection" do
      player1 = Player.new("X")
      board1 = Board.new
      turn1 = Turn.new("b", board1, player1)
      turn1.place_token("B1")

      expect(board1.divs["B1"]).to eq("X")
    end

    it 'can list the elements in each column' do
      player1 = Player.new("X")
      board1 = Board.new
      turn1 = Turn.new("b", board1, player1)

      expect(board1.a_array).to eq(["A1", "A2", "A3", "A4", "A5", "A6"])
    end
end
