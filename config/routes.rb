Rails.application.routes.draw do
  namespace :admin do
    get "/dashboard", to: "dashboard#main"
  end
  resources :animals
  resources :categories
  resources :facilities
  resources :locations
  root to:  "animals#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
