Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get "/about", to: "home#about"

  resources :owners, only: [:index, :show] do
    resources :pets, only: [:index]
  end

  resources :animals
end
