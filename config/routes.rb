Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: "registrations" }
  root 'posts#index'
  get "/users/:id", to: "users#show", as:"user"
  
  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
  end
end