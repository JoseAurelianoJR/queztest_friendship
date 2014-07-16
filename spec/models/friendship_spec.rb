require 'rails_helper'

RSpec.describe Friendship, :type => :model do
  describe "validations" do
    before(:each) do
     @friend = build :friend
     @player = build :player
    end 

    it "should have valid player" do
      player = build :player, name: ""
      player.should_not be_valid
    end

    it "should have valid friend" do
      friend = build :friend, name: ""
      friend.should_not be_valid
    end


  end
end 
