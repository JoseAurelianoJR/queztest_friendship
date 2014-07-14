class DashboardController < ApplicationController
  include SessionHelper
  before_filter :authenticate_player!
  def index
  end

  private
  def authenticate_player!
    unless player_signed_in?
      redirect_to "/", alert: "You're not signed in"
    end
  end
end
