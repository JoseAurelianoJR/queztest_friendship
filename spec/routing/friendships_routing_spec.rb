require "rails_helper"

RSpec.describe FriendshipsController, :type => :routing do
  describe "routing" do
    
    it "routes to #create" do
      expect(:post => "/players/1/friendships").to route_to("friendships#create", :player_id => "1")
    end

    it "routes to #accept" do
      expect(:put => "/friendship/1").to route_to("friendships#accept", :friendship_id => "1")
    end

    it "routes to #reject" do
      expect(:delete => "/friendship/1").to route_to("friendships#reject", :friendship_id => "1")
    end

  end
end
