Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [ :index, :show ]
  resources :listings do
    resources :bookings, only: [ :new, :create, :edit, :update ] do
      resources :reviews, only: [ :new, :create ]
    end
  end
end
