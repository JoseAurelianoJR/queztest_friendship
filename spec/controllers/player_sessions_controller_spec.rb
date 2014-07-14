require 'rails_helper'

RSpec.describe PlayerSessionsController, :type => :controller do
  before(:each) do
    allow(controller.request).to receive(:referer){ 'http://example.com' }
  end

  describe "POST create" do
    let!(:player){ create :player }

    it "should save player id on session" do
      post :create, player_id: player.id
      expect(session[:current_player_id]).to eq(player.id.to_s)
    end
  end
end
