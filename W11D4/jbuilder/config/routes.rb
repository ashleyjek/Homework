Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :guests, only: [:show, :index] do
      resources :gifts, only: [:index], shallow: true
    end
    resources :gifts, only: [:show]
    resources :parties, only: [:index, :show]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end