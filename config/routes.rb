Rails.application.routes.draw do
  get 'dashboard', to: "dashboard#index"
  put 'friendship/:friendship_id', to: "friendships#accept", as: "accept_friendship_request"
  delete 'friendship/:friendship_id', to: "friendships#reject", as: "reject_friendship_request"

  root to: "players#index"

  resources :players do
    resources :player_sessions, only: [ :create ], path: "/sessions"
    resources :friendships, only: [:create]
  end

end
