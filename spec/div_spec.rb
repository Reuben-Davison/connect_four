require "pry"
require "rspec"
require "./lib/board"
require "./lib/div"

RSpec.describe Div do
  context 'create div class' do
    it 'exists' do
      div1 = Div.new('.')

      expect(div1).to be_a(Div)
    end

    it 'can read the tokens' do
      div1 = Div.new('.')

      expect(div1.token).to eq('.')
    end

    it 'can tell if it is empty' do
      board = Board.new
      div1 = Div.new('A1', '.')
      div2 = Div.new('B1', 'X')
      div3 = Div.new('C1', 'O')

      expect(div1.empty?).to be(true)
      expect(div2.empty?).to be(false)
      expect(div3.empty?).to be(false)
    end
  end
end
