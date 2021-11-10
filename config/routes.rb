Rails.application.routes.draw do
  root to: 'homes#index'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users
  resources :books, only: [:new, :create, :index, :show, :destroy, :update, :edit] do
    resource :favorites, only: [:create, :destroy]
  end
end
