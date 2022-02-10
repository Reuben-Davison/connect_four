require "pry"
require "rspec"
require "./lib/player"

RSpec.describe Player do

    it "exists" do
      player = Player.new("John")

      expect(player).to be_an_instance_of(Player)
      expect(player.token).to eq("X")
      expect(player.name).to eq("John")
    end
  
end 
