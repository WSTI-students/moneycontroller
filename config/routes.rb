Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #root to: 'pages#sign_in'
  root to: 'pages#index'

  resources :expenses, only: [:show, :new, :edit, :destroy]
  resources :incomes, only: [:show, :new, :edit, :destroy]
end
