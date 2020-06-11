Rails.application.routes.draw do
  resources :feed_logs
  resources :comments
  resources :cats
  resources :sectors
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
