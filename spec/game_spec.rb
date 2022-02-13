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
  end
end
