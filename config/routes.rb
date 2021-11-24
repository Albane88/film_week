Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'homepages#dashboard', as: :dashboard
  # get 'movies/id', to: 'movies#show'
  # get 'movies/id/trailer', to: 'movies#show'
  # post 'watch-parties/attendees', to: 'attendees#create'
  # get 'watch-parties/new', to: 'watch_parties#new'
  # post 'messages', to: 'messages#create'
  # get 'movie/id', to: 'movies#show'
  # post 'movie/id/reviews', to: 'reviews#create'
  # get 'movie/id/reviews', to: 'reviews#show', as: :review
  # get 'home', to: 'homepages#home'

   resources :movies, only: [:show] do
   resources :reviews, only: [:new, :create]
   end
   resources :watch_parties, only: [:new, :create, :show, :index]
end
