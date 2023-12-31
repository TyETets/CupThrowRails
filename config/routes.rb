Rails.application.routes.draw do
  root 'static_pages#home'

  get 'sessions/new'
  get "/home", to: "static_pages#home"
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users, :static_pages, :sessions
end
