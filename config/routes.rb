Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users
  root to: 'pages#home'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

resources :games, only: [] do
  resources :game_sessions, only: [:create, :show] do
    resources :game_session_songs, only: [:create] do
      resources :guesses, only: [:create]
    end
    member do
      get :victory # score ici
    end
  end
end

resources :guests, only: [] do

  member do
    delete :reset
    get :stats
  end

end

resources :friendships, only: [:create, :index] do
  member do
    patch :decline
    patch :accept
    patch :cancel
  end
end

  # get '/solo', to: 'game_sessions#solo'
  # get '/playlist', to: 'game_sessions#playlist'
  get '/rules', to: 'pages#rules'
  get '/faq', to: 'pages#faq'
  # get '/guest/:id/score', to: 'guests#score'
  get '/users', to: 'pages#users'
  get '/users/stats', to: 'users#stats'
  get 'users/password', to: redirect("users/password/new")

end
