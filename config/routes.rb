Rails.application.routes.draw do

  resources :musicians, only: [:index, :show, :edit, :update]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, except: [:show, :create, :new] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :chatrooms, only: [:create]
  end

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: [:create]
  end

  resources :bookings, except: [:new, :create]
  resources :reviews, except: [:new, :create]
  resources :chatrooms, only: [:destroy]

  patch '/approve', to: 'bookings#approve', as: 'approve'
  patch '/reject', to: 'bookings#reject', as: 'reject'

end
