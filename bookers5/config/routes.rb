Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  root 'home#top'
  get 'home/about'
  get '/search' => 'search#search'

end
