Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#welcome'
  get '/budget', to: 'pages#index'

  resources :expenses
  resources :incomes
  resources :budgets
end
