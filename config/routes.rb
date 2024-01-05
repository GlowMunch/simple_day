Rails.application.routes.draw do
  resources :journal_entries
  resources :users
  resources :entries
  resources :journals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
