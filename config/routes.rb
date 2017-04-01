 Rails.application.routes.draw do

  resources :comments
  resources :posts
  resources :dashboard
  resources :users, only: [:show]
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