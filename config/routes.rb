PostitTemplate::Application.routes.draw do
  root to: 'programs#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/register', to: 'users#new'
  post 'programs/:id/register', to: 'programs#register', as: 'program_register'

  resources :commutefit, only: [:index]
  resources :carpool, only: [:index]
  resources :emergency_ride_home, only: [:index]
  resources :commuteswap, only: [:index]      
  resources :users, only: [:show, :create, :edit, :update]
end
