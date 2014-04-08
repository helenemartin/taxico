Taxico::Application.routes.draw do

  devise_for :users
  resources :taxis
  resources :bookings


  root to: "taxis#index"

end
