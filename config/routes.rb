Taxico::Application.routes.draw do

  devise_for :users
  resources :taxis
  resources :bookings

end
