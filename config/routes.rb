Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api do
    resources :users
    post 'login', to: 'sessions#create'
    get 'logout', to: 'sessions#destroy'
    
    resources :movies
  end
end
