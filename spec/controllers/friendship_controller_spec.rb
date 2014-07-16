require 'rails_helper'
require File.dirname(__FILE__) + '/../requests/authentication_helpers'

RSpec.describe FriendshipsController, :type => :controller do
  include AuthenticationHelpers
  let(:valid_session) { {:current_player_id => 1} }

  before(:each) do
    @player = create :player
    @friend = create :friend

  end  

  describe "POST create" do
    
    it "creates a new Friendship" do
      friendship = build :friendship, status: 0 

      friendship.player = @player
      friendship.friend = @friend

      expect {
      post :create, {:friendship => friendship, :player_id => @player}, valid_session
      }.to change(Friendship, :count).by(1)
    end

    
    it "redirects to the players list" do  
      friendship = build :friendship, status: 0 

      friendship.player = @player
      friendship.friend = @friend

      
      post :create, {:friendship => friendship, :player_id => @player}, valid_session
      expect(response).to redirect_to(players_url)
    end
  end

  describe "PUT accept" do
    
    #faltando
  end

  describe "DELETE reject" do
    it "destroys the requested friendship" do
      friendship = build :friendship, id: 1
      expect {
        delete :reject, {:friendship_id => friendship.to_param}
      }.to change(Friendship, :count).by(-1)
    end

    it "redirects to dashboard" do
      friendship = build :friendship, id: 1
      delete :reject, {:friendship_id => friendship.to_param}
      expect(response).to redirect_to(dashboard_url)
    end
  end

end
