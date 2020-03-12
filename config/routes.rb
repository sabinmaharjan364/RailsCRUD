Rails.application.routes.draw do
  resources :users
  root "users#hello_world"
  get 'test',to: "users#snake"
  get 'main',to:  "main#index"


  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
