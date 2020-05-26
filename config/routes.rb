Rails.application.routes.draw do
  get 'users/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'lessons/index'
  get 'lessons/show'
  get 'coaches/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
