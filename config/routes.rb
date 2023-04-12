Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users/homes#index"

  namespace :users do
    resources :users, only: :show
    get "/users_by_emails/:email" => "users_by_emails#show", param: :email, constraints: { email: /.*/ }
  end
end
