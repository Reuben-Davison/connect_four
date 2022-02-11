require "pry"
require "rspec"
require "./lib/player"
require "./lib/div"
require "./lib/board"
require "./lib/turn"

RSpec.describe Turn do

    it "exists" do
      player1 = Player.new("Ralph")
      turn1 = Turn.new("b", player1)

      expect(turn1).to be_an_instance_of(Turn)
      expect(turn1.col_selection).to eq("b")
      expect(turn1.who_is_playing).to eq(player1)
    end
    
    
    it "test input to input_to_integer " do
      player1 = Player.new("Ralph")
      turn1 = Turn.new("g", player1)
      # col_selection = "b"
      # binding.pry
      turn1.input_to_integer(turn1.col_selection)
      expect(turn1.column).to eq(7)
      
    end
    
    
    xit "changes the board based on col_selection" do
      player1 = Player.new("Ralph")
      turn1 = Turn.new("b", player1)
      
      expect(rows_hash[0][1][0]).to eq ("X")
    end
  
end 
