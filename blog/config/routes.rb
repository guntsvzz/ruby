Rails.application.routes.draw do
  resources :posts
  get 'articles/index'
  resources :authors
  
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
