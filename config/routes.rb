Rails.application.routes.draw do
  resources :devlogs
  resources :dispositivos
  resources :accounts
  get '/welcome', to:"welcome#index"
  get '/', to:"welcome#index"
  #get '/', to:"welcome#index"
  #get 'welcome/index'
  #get '/welcome', to:"welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
