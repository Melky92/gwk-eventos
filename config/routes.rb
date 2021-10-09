Rails.application.routes.draw do
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
