Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'users/new'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contactus', to: 'static_pages#contactus'
  get '/signup', to:'users#new'
  post '/signup',to: 'users#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end