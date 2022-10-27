Rails.application.routes.draw do
  root to: "users#index"

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :new, :create, :show] do
      resources :comments, only: [:index, :new, :create, :show]
      resources :likes, only: [:create]
    end
  end
end
