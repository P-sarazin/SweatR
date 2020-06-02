Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
    get "/dashboard", to: "users#dashboard"
  end
  resources :lessons do
    resources :bookings, only: [:new, :create, :show, :destroy] do
      resources :reviews, only: [:new, :create, :index]
    end
  end
  resources :bookings, only: :index
  resources :coaches, only: [:index, :show]
  resources :sessions
end
