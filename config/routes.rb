Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  resources :places do
    resources :comments, :images, only: :create
  ##  resources :comments, only: :create
  end
end