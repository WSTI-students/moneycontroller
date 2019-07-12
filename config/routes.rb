Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  resources :expenses, only [:show, :new]
  resources :incomes, only [:show, :new]
end
