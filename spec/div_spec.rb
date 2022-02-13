require "pry"
require "rspec"
require "./lib/board"
require "./lib/div"

RSpec.describe Div do
  let(:board) {Board.new}
  let(:div1) {Div.new('A1', '.')}
  let(:div2) {Div.new('B1', 'X')}
  let(:div3) {Div.new('C1', 'O')}
  context 'create div class' do
    it 'exists and can read tokens' do

      expect(div1).to be_a(Div)
      expect(div1.token).to eq('.')
      expect(div2.token).to eq('X')
      expect(div3.token).to eq('O')
    end

    it 'can tell if it is empty' do

      expect(div1.empty?).to be(true)
      expect(div2.empty?).to be(false)
      expect(div3.empty?).to be(false)
    end

    it 'can read each divs location' do
# binding.pry  
      expect(div1.location).to eq('A1')
    end
  end
end
