Rails.application.routes.draw do
  resources :rooms
  resources :users
  
  resources :posts

  root 'home#index'
end
