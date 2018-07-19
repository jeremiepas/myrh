Rails.application.routes.draw do

  resources :announces
  resources :cities
  resources :compagnies
  resources :responses
  resources :quizzes
  resources :users
  resources :sessions
  get '/', to: 'homepage#show'
  get '/inscription' => 'users#new'
  get '/login'     => 'sessions#login'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/search/cities/:q' => 'search#searchCities'
  get '/search/compagnies/:q' => 'search#searchCompagnies'
  get '/search/users/:q' => 'search#searchUsers'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))(.:format)', via: [:get, :post]

end
