Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/about', to: 'pages#about'

  resources :users, only: [:show]

  resources :flats do
    resources :bookings, only: [:new, :create, :show, :destroy]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [:index]
end
