Rails.application.routes.draw do
  get 'dashboard', to: "dashboard#index"

  root to: "players#index"

  resources :players do
    resources :player_sessions, only: [ :create ], path: "/sessions"
  end

end
