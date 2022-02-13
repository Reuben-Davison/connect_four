require "pry"
require "rspec"
require "./lib/player"

RSpec.describe Player do
  let(:player1) {Player.new('John')}
  context "iteration 1" do
    it "exists" do

      expect(player1).to be_a(Player)
      expect(player1.token).to eq("X")
      expect(player1.name).to eq("John")
    end
  end 
end
