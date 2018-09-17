Rails.application.routes.draw do
  resources :parkinghistories
  resources :rates
  resources :additionalservices
  resources :parkings
  resources :users
  resources :documenttypes
  resources :usertypes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
