Rails.application.routes.draw do
  
  get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :posts do
    member do
    put "like", to: "posts#upvote"
    put "dislike", to: "posts#downvote"
    end
  end
  
  resources :users
  resources :posts

  root 'home#index'
end
