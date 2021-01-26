Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :notes
  get '/note/new', to: 'notes#new'

  root to: "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end