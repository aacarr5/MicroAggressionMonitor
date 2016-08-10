Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :micros, only: [:new, :destroy, :index, :show, :create]

  get 'user/dashboard', to: 'users#dashboard', as: :user

end
