Rails.application.routes.draw do
  root to: 'pages#home'
  get 'contact/index'
  resources :contact, only: [:index]
end
