Rails.application.routes.draw do
  resources :parkinghistories
  resources :rates
  resources :additionalservices
  resources :parkings
  resources :parkingtypes
  resources :users
  resources :genders
  resources :documenttypes
  resources :usertypes
  resources :user_genders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
