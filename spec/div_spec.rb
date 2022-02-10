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
  end
end
