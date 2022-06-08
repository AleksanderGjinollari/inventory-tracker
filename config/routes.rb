Rails.application.routes.draw do
  devise_for :accounts
  get "/dashboard" => "dashboard#index", as: :dashboard
  get 'dashboard/items'
  get 'dashboard/reports'
  resources :items
  root to: 'public#main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
