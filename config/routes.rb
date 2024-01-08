Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show] do
    resources :journals, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  resources :entries

  resources :journal_entries

  resources :sessions, only: [:new, :create, :destroy]

  delete "logout", to: "sessions#destroy", as: :logout

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
