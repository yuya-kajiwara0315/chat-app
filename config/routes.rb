Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
# <<<<<<< HEAD
#   root to: "messages#index"
#   resources :users, only: [:edit, :update]
# =======
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end