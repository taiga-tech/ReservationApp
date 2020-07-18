Rails.application.routes.draw do
  root "infos#index"
  resources :infos, only: [:index, :show, :edit, :update]
  resources :galleries, only: [:index, :new, :create, :destroy]
  resources :users
  resources :menus
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :stylists
end
