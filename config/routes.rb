Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  get 'prototypes', to: 'prototypes#index'
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  as :user do
    get '/users/sign_out', to: 'devise/sessions#destroy', as: :logout
  end
end
