Rails.application.routes.draw do
  #get '/', to:"welcome#index"
  root 'pages#home'
  devise_for :admins
  devise_for :users
  resources :devlogs
  resources :dispositivos
  resources :accounts
  #get '/admins', to:"admins#registrations"
  #root to:"users/sessions#new"
  #post '/dispositivos', to:"devlogs#new"
  #get '/', to:"welcome#index"
  #get 'welcome/index'
  #get '/welcome', to:"welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
