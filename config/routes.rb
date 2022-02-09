Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :restaurants do
    resources :menu_meals, only: [ :index, :new, :create ]
    resources :menu_beverages, only: [ :index, :new, :create ]
  end
  resources :menu_meals, only: [ :destroy ]
  resources :menu_beverages, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
