require 'pry'
require 'rspec'
require './lib/board'
require './lib/div'
require './lib/player'
require './lib/game'

RSpec.describe Game do
  let(:new_game) {Game.new}
  context 'game branch' do
    it 'exists' do

      expect(new_game).to be_a(Game)
    end

    it "test for a vertical winner" do
      game = Game.new
      game.game_board
      game.game_board.divs["A1"] = "X"
      game.game_board.divs["A2"] = "X"
      game.game_board.divs["A3"] = "X"
      game.game_board.divs["A4"] = "X"

      expect(game.v_winner?).to eq(true)
    end

    it "test for a horizontal winner" do
      game = Game.new
      game.game_board
      game.game_board.divs["A1"] = "X"
      game.game_board.divs["B1"] = "X"
      game.game_board.divs["C1"] = "X"
      game.game_board.divs["D1"] = "X"

      expect(game.h_winner?).to eq(true)
    end

    it "test for a diagonal winner" do
      game = Game.new
      game.game_board
      game.game_board.divs["A1"] = "X"
      game.game_board.divs["B2"] = "X"
      game.game_board.divs["C3"] = "X"
      game.game_board.divs["D4"] = "X"

      expect(game.v_winner?).to eq(true)
    end

    it "test for a overall winner" do
      game = Game.new
      game.game_board
      game.game_board.divs["A1"] = "X"
      game.game_board.divs["B1"] = "X"
      game.game_board.divs["C1"] = "X"
      game.game_board.divs["D1"] = "X"

      expect(game.has_someone_won?).to eq(true)
    end
  end
end
