require 'rails_helper'
require File.dirname(__FILE__) + '/authentication_helpers'

RSpec.describe "Friendships", :type => :request do
  include AuthenticationHelpers

  before(:each) do
    @player = create :player
    @friend = create :friend
    login(@player)
  end  

  describe "PUT /friendship/1" do
    it "Accept friendship request" do
      
      friendship = create :friendship, player: @player, friend: @friend      
      put accept_friendship_request_path(friendship)
      expect(response.status).to eq(302)
    end
  end

  describe "DELETE /friendship/1" do
    it "Reject friendship request" do
      friendship = build :friendship , id: 1
      delete reject_friendship_request_path(friendship)
      expect(response.status).to eq(302)
    end
  end

end
