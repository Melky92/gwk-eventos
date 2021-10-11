Rails.application.routes.draw do
  get "/", to: "events#index"
  get "/events/pending", to: "events#pending_events"
  get "/events/finished", to: "events#finished_events"
  get "/events/player/:player_id", to: "events#events_of_player", as: "events_of_player"
  get "/events/:id/players/add", to: "events#add_players", as: "add_players"
  post "/events/:id/players/add", to: "events#add_player", as: "add_player"
  post "/events/:id/winner/:player_id", to: "events#set_winner", as: "set_winner"
  delete "/events/:id/players/remove/:player_id", to: "events#remove_player", as: "remove_player"
  resources :player_events
  resources :event_statuses
  resources :prizes
  resources :events
  resources :reaches
  resources :rulings
  resources :games
  resources :players
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
