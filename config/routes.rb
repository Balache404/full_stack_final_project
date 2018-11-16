Rails.application.routes.draw do

  get 'series/index'
  get 'series/show'
  get 'characters/index'
  get 'characters/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :figures, only: [:index, :show]
  resources :series, only: [:index, :show]
  resources :characters, only: [:index, :show]

  root to: 'figures#index'
  get 'figures/:id', to: 'figures#show'

  get '/series', to: 'series#index'
  get '/series/:id', to: 'series#show'

  get '/character', to: 'characters#index'
  get '/character/:id', to: 'characters#show'
end
