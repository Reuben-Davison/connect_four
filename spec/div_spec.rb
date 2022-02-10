require "pry"
require "rspec"
require "./lib/board"
require "./lib/div"

RSpec.describe Div do
  context 'create div class' do
    it 'exists' do
      div1 = Div.new(".")

      expect(div1).to be_a(Div)
    end

    it 'can read the tokens' do
      div1 = Div.new(".")

      expect(div1.token).to eq(["."])
      expect(div1.ply1_token).to eq(["X"])
      expect(div1.ply2_token).to eq(["O"])
      expect(div1.comp_token).to eq(["O"])
    end

    it 'can change its value' do
      c4board = Board.new
      div1 = Div.new(".")

      expect(div1.empty?).to be(true)
    end
  end
end
