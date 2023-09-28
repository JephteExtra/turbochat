Rails.application.routes.draw do
  get 'rooms/index'
  root 'pages#home'
  devise_for :users
  get 'user/:id', to: 'users#show', as: 'user'
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
