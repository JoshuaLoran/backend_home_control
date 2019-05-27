Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :devices
  resources :users_devices, only: [:create, :destroy]
  post '/userdevice', to: 'users_devices#create'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  mount ActionCable.server => '/cable'
end
