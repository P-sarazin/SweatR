Rails.application.routes.draw do
  get 'users/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'lessons', to: "lessons#index"
  get "lessons/:id", to: "lessons#show", as: :lesson
  get 'coaches/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
