Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :micro_aggressions, only: [:new, :destroy, :index, :show]

end
