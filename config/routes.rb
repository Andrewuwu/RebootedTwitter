Rails.application.routes.draw do
  devise_for :models
    root "tweets#index"
    resources :models, :only => [:show] do
      resources :relationships, only: [:create]
    end
    resources :relationships, only: [:destroy]
    resources :tweets do
      resources :comments
    end
end
