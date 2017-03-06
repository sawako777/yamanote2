Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "posts#index"
  resources :yamanames do
    resources :posts
    collection do
      get 'search'
    end
  end
end
