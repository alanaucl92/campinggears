Rails.application.routes.draw do
  get 'reservations/new'
  get 'gears/new'
  devise_for :users
  root to: "gears#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "reservations/mygear", to: "reservations#mygear"
  get "gears/myitems", to: "gears#myitems"
  resources :gears, only: [:index, :create, :new, :show, :edit, :update, :destroy] do
    resources :reservations, only: [:create, :new]
  end

  resources :reservations, only: [:index, :edit, :update]

end
