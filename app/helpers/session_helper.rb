module SessionHelper
  def current_player
    load_player_from_id session[:current_player_id]
  end

  def player_signed_in?
    !!load_player_from_id(session[:current_player_id])
  end

  private
  def load_player_from_id(id)
    Player.find(id) rescue nil
  end
end
