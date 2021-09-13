Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users, only: :show
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'posts#index'
end
