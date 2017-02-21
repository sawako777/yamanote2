Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "top#index"
  get  'posts/new'    => 'tweets#new'
end
