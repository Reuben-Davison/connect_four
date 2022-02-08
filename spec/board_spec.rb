require "pry"
require "rspec"
require "./lib/board"
RSpec.describe Board do
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
  
  
  
end
