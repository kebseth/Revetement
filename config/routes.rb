Rails.application.routes.draw do
  devise_for :user, skip: [:registrations]
  root to: 'pages#home'
  get 'contact/index'
  resources :contact, only: [:index]
  resources :devis, only: [:new, :create]
  resources :sols, only: [:index, :new, :create]
end
