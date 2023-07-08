Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create]

  resources :bookmarks, only: [:new, :create, :destroy]

end

# You don’t need all 7 CRUD routes for your models (and ZERO routes for your movies):
# lists
# index, show, new, create
# bookmarks
# new, create, destroy
