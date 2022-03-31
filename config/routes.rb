Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :books, only: :show
  resources :authors, only: [:index, :show]
  resources :groups, only: [:index, :show]

  root to: "groups#index"
end
