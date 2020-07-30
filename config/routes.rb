Rails.application.routes.draw do
  root "home#index"
  devise_for :staffs
  resources :management, only: :index
  resources :calculations, only: [:edit, :update]
  resources :infos, only: [:show, :edit, :update]
  resources :galleries, only: [:index, :new, :create, :destroy]
  resources :menus
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :stylists
  resources :reservations
end
