Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'home', to: 'pages#home'
  get 'dashboard', to: 'homepages#dashboard', as: :dashboard
  # get 'movies/:id', to: 'movies#show'
  # get 'movies/id/trailer', to: 'movies#show'
  # get 'watch-parties', to: 'watch_parties#show'
  # post 'watch-parties/attendees', to: 'attendees#create'
  # get 'watch-parties/new', to: 'users#new'
  # post 'messages', to: 'messages#create'
  # get 'movie/id', to: 'movies#show'
  # post 'movie/id/reviews', to: 'reviews#create'
  # get 'home', to: 'homepages#home'

  resources :movies, only: [:show]
end
