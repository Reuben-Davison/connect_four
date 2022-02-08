require "pry"
require "rspec"
require "./lib/board"
RSpec.describe Board do
  describe '#iteration 1' do
    it "exists" do
      board = Board.new

      expect(board).to be_an_instance_of(Board)
    end

    it "has rows and columns" do
      board = Board.new

      expect(board.rows).to eq(6)
      expect(board.columns).to eq(7)
    end

    it "can read each div" do
      board = Board.new

      expect(board.divs).to be_a(Hash)
    end

    it "can render a board" do
      board = Board.new
  binding.pry 
      expect(board.render).to eq("A B C D E F G \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . . \n. . . . . . .")
    end
  end
end
