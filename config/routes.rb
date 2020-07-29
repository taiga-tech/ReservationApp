Rails.application.routes.draw do
  devise_for :staffs
  resources :management, only: :index
  resources :calculations, only: [:edit, :update]
  root "home#index"
  resources :infos, only: [:show, :edit, :update]
  resources :galleries, only: [:index, :new, :create, :destroy]
  # resources :users
  resources :menus
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :stylists
  resources :reservations
end
