Rails.application.routes.draw do
  resources :genres
  resources :episodes
  resources :seasons
  resources :serietests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "genres#index"
end
