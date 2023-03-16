Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/about', to: 'pages#about'

  # devise_for :users, skip: [:sessions]
  # as :user do
  #   get 'signin', to: 'devise/sessions#new', as: :new_user_session
  #   post 'signin', to: 'devise/sessions#create', as: :user_session
  #   match 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats do
    resources :bookings, only: [:new, :create, :show]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [:index]
end
