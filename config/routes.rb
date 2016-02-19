Rails.application.routes.draw do

  get 'users/posts_index'

  root 'home#index'

  devise_for :users
  resources :home, only: :index
  resources :articles, only: [:show, :new, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :categories, only: [:index, :show]
  resources :clips, only: [:create, :destroy]
  resources :users, only: [:show, :posts_index]

end
