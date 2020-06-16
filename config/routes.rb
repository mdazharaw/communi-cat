Rails.application.routes.draw do
  root 'application#home'

  
  resources :cats 
    resources :feed_logs
    resources :comments
  
  resources :sectors
  devise_for :users

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
