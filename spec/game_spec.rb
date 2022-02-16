require 'pry'
require 'rspec'
require './lib/board'
require './lib/div'
require './lib/player'
require './lib/game'

RSpec.describe Game do
  let(:new_game) {Game.new}
  context 'game branch' do
    xit 'exists' do
# binding.pry 
      expect(new_game).to be_a(Game)
    end
    
    xit "can read user board input" do
      play_input = "d"
      expect(new_game.play_input).to eq("a".."g")
      
    end
    
    it "test for a vertical winner" do
      game = Game.new
      game.game_board
      game.game_board.divs["A1"] = "X"
      game.game_board.divs["A2"] = "X"
      game.game_board.divs["A3"] = "X"
      game.game_board.divs["A4"] = "X"
      # require "pry"; binding.pry
      game.winner?
      expect(game.winner?).to eq(true)
      
      
    end
    xit "test for a horizontal winner" do
      game = Game.new
      game.game_board
      game["A1"] = "X"
      game["B1"] = "X"
      game["C1"] = "X"
      game["D1"] = "X"
      game.winner?
      expect(game.winner?).to eq(true)
      
    end
    xit "test for a diagonal winner" do
      game = Game.new
      game.game_board
      game.game_board.divs["A1"] = "X"
      game.game_board.divs["B2"] = "X"
      game.game_board.divs["C3"] = "X"
      game.game_board.divs["D4"] = "X"
      game.winner?
      expect(game.winner?).to eq(true)
      
    end
  end
end
