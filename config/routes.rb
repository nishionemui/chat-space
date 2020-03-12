Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
 resources :users, only: [:edit, :update]
 resources :groups, only: [:index, :new, :create, :edit, :update, :edit] do
   resources :messages, only: [:index, :create, :edit]
  end
end
