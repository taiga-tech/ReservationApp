Rails.application.routes.draw do
  get 'management', to: "management#index"
  root "home#index"
  resources :infos, only: [:index, :show, :edit, :update]
  resources :galleries, only: [:index, :new, :create, :destroy]
  # resources :users
  resources :menus
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :stylists
  resources :reservations
end
