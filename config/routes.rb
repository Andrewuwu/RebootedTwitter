Rails.application.routes.draw do
  get 'cookie_clicker/index'
  devise_for :models
  root "tweets#index"
    resources :models, only: [:show] do
      resources :relationships, only: [:create, :show]
    end
    resources :relationships, only: [:destroy]
    resources :tweets do
      resources :comments
    end
    resources :cookie_clickers
  
end
