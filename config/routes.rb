 Rails.application.routes.draw do

  resources :friends
  resources :comments
  resources :posts
  resources :dashboard
  # resources :user, only: [:show]

  # friendship routes
  get "/show_all_friends" => "friends#show_all_friends", :as => "show_all_friends"
  post "/accept_friend_request/:id" => "friends#accept_friend_request", :as => "accept_friend_request"
  post "/reject_friend_request/:id" => "friends#reject_friend_request", :as => "reject_friend_request"
  post "/block_friend_request/:id" => "friends#block_friend_request", :as => "block_friend_request"
  post "/friend_request/:id" => "friends#create_friendship", :as => "create_friend_request"


  get "/user/:id" => "users#show", :as => "show_user_path"
  get "/my_posts" => "dashboard#my_posts", :as => "my_posts"
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root :to => 'welcome#index'
    end
    unauthenticated :user do
      root :to => 'devise/registrations#new', as: :unauthenticated_root
    end
  end
end