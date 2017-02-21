Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "top#index"
  get 'posts'        => 'posts#index'
  get 'posts/new'    => 'posts#new'
end
