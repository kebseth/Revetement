Rails.application.routes.draw do
  devise_for :user, skip: [:registrations, :sessions]
  devise_scope :user do
    get 'papa',to: 'devise/sessions#new',  as: :new_user_session
    post   'papa',  to: 'devise/sessions#create',  as: :user_session
    delete 'papa', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  root to: 'pages#home'
  get 'contact/index'
  resources :contact, only: [:index]
  resources :devis, only: [:new, :create]
  resources :sols, only: [:index, :new, :create, :destroy]
end
