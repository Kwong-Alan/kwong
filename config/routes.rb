Rails.application.routes.draw do
  devise_for :users
 root 'places#index'
 resources :places do
  resources :comments, only: :create
end

  root 'places#index'
  resources :place do
    resources :photos, only: :create
  end
end

