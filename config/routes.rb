Rails.application.routes.draw do

  root 'home#index'

  resources :home, only: :index
  resources :articles, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :categories, only: [:index, :show]
  resources :clips, only: [:create, :destroy]
  resources :userss, only: [:show, :posts_index]


  devise_for :users

end
