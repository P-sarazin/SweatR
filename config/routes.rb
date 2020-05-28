Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :bookings
  end
  resources :coaches
  resources :lessons
  resources :specialties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
