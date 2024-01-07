Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  resources :journals

  resources :entries

  resources :journal_entries

  delete "logout", to: "sessions#destroy", as: :logout

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
