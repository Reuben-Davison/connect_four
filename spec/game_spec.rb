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
# binding.pry 
      expect(new_game).to be_a(Game)
    end
    
    it "can read user board input" do
      play_input = "d"
      expect(new_game.play_input).to eq("a".."g")
      
    end
  end
end
