Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get "/dashboard", to: "users#dashboard"
  resources :lessons do
    resources :bookings, only: [:new, :create, :show] do
      resources :reviews, only: [:new, :create, :index]
    end
  end
  resources :bookings, only: :index
  resources :coaches, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
