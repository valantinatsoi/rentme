Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  get 'profile', to: 'pages#profile', as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [ :index, :show ] do
    resources :listings, only: [ :new, :create ]
  end
  resources :listings, only: [ :index, :show, :edit, :update, :destroy ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :show, :edit, :update, :destroy ] do
    resources :reviews, only: [ :new, :create ]
  end
end
