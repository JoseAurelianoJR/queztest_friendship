class PlayerSessionsController < ApplicationController
  include SessionHelper
  def create
    if !params[:player_id].blank? && load_player_from_id(params[:player_id])
      session[:current_player_id] = params[:player_id]
    end
    redirect_to request.referer, notice: "Session created!"
  end
end
