Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"

  # WEB APP ROUTES
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :new, :create, :show, :destroy] do
      resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create]
    end
  end

  # API ROUTES
  namespace :api do # /api
    namespace :v1 do # /api/v1
      resources :users do # api/v1/users
        resources :posts, format: :json do # api/v1/users/:user_id/posts
          resources :comments, format: :json # api/v1/users/:user_id/posts/:post_id/comments
        end
      end
    end
  end

end
