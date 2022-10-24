Rails.application.routes.draw do
  root to: "users#index"
  
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show] do
    end
  end

end
