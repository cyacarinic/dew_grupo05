Rails.application.routes.draw do
  resources :parking_histories
  resources :rates
  resources :additional_services
  resources :parkings
  resources :users
  resources :document_types
  resources :user_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
