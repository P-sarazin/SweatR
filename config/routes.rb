Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users do
    get "/dashboard", to: "users#dashboard"
  end
  resources :lessons do
    resources :bookings, only: [:new, :create, :update, :show, :destroy]
  end
  resources :bookings, only: :index
  resources :coaches, only: [:index, :show]
  resources :cams do
    collection do
      get :username
    end
  end
end
