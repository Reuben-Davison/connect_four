require 'pry'
require 'rspec'
require './lib/board'
require './lib/div'
require './lib/player'

RSpec.describe Board do
  let(:board) {Board.new}
  let(:player1) {Player.new("John")}
  describe '#iteration 1' do
    it "exists" do

      expect(board).to be_an_instance_of(Board)
    end

    it "has rows and columns" do

      expect(board.rows).to eq(6)
      expect(board.columns).to eq(7)
    end

    it "can read each div" do

      expect(board.divs).to be_a(Hash)
    end

    it "can render a board" do
      div1 = Div.new(".")
      div2 = Div.new(".")

      expect(board.render).to eq("A B C D E F G \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . .\n")
    end

    it 'can change tokens base on placement' do
    end
  end
end
