Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:new, :create, :show, :index]
  resources :cuisines, only: [:new, :create,:show]
  resources :food_types, only: [:new, :create, :show]

  root to: 'recipes#index'
end
