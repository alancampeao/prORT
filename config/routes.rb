Rails.application.routes.draw do
  
  resources :posts do
    put "like", to: "posts#upvote"
    put "dislike", to: "posts#downvote"
  end
  
  resources :users
  resources :posts

  root 'home#index'
end
