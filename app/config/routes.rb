Rails.application.routes.draw do
  get 'homepage/show'

  resources :announces
  resources :cities
  resources :compagnies
  resources :responses
  resources :quizzes
  resources :users
  get '/', to: 'homepage#show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
