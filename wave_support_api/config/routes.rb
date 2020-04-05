Rails.application.routes.draw do
  resources :admin_messages
  resources :user_messages
  resources :articles
  resources :tickets
  resources :categories
  resources :admins
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
