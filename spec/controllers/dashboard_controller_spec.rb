require 'rails_helper'

RSpec.describe DashboardController, :type => :controller do

  describe "GET 'index'" do
    it "returns http success" do
      session[:current_player_id] = create(:player).id
      get 'index'
      expect(response).to be_success
    end
  end

end
