Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "posts#index"
  resources :yamanames do
    resources :posts do
      resources :comments, only: [:create]
    end
  end
end
