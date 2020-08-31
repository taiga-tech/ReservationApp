Rails.application.routes.draw do
  root "home#index"
  devise_for :staffs
  resources :reservations
  resources :management, only: :index do
    collection do
      resources :stylists
      resources :menus
      resources :galleries, except: [:show, :edit, :update] #only: [:index, :new, :create, :destroy]
      resources :categories, except: :show #only: [:index, :new, :create, :edit, :update, :destroy]
      resources :infos, only: [:show, :edit, :update]
      resources :calculations, only: [:edit, :update]
    end
  end
  # resources :calculations, only: [:edit, :update]
  # resources :infos, only: [:show, :edit, :update]
  # resources :galleries, except: [:show, :edit, :update] #only: [:index, :new, :create, :destroy]
  # resources :menus
  # resources :categories, except: :show #only: [:index, :new, :create, :edit, :update, :destroy]
  # resources :stylists
  # resources :reservations
end
