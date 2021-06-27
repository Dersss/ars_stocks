Rails.application.routes.draw do
  resources :users
  resources :positions
  resources :stocks
  resources :cryptos
  resources :pages

  get '/charts', to: 'pages#charts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
