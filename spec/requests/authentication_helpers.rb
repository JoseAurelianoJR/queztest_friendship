module AuthenticationHelpers

  def login(player)
    post player_player_sessions_path(player), {}, {'HTTP_REFERER' => '/'}
  end  
end