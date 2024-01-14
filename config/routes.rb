Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:new, :create, :show] do
        resources :journals, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
          resources :entries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
        end
      end
      resources :sessions, only: [:new, :create, :destroy]

      delete "logout", to: "sessions#destroy", as: :logout

      # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

      # Defines the root path route ("/")
      root "welcome#index"
    end
  end
end
