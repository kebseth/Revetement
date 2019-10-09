Rails.application.routes.draw do
  root to: 'pages#home'
  get 'contact/index'
  resources :contact, only: [:index]
  resources :devis, only: [:new, :create]
end
