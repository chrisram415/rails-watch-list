Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  # resources :lists, only: [:index, :show, :new, :create]

  # resources :bookmarks, only: [:new, :create, :destroy]

  resources :lists, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

end

# You don’t need all 7 CRUD routes for your models (and ZERO routes for your movies):
# lists
# index, show, new, create
# bookmarks
# new, create, destroy
