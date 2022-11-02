Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :new, :create, :show] do
      resources :comments, only: [:create]
      resources :likes, only: [:create]
    end
  end
end
