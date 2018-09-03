Rails.application.routes.draw do
  root 'home#index'

  get 'about', controller: :static, action: :about, alias: 'about'
  get 'services', controller: :static, action: :services, alias: 'services'

  get 'owner/new', controller: :owner, action: :new, alias: 'owner_new'
  get 'owner/edit', controller: :owner, action: :edit, alias: 'owner_edit'
  get 'owner/list', controller: :owner, action: :list, alias: 'owner_list'
  get 'owner/search', controller: :owner, action: :search, alias: 'owner_search'

  get 'user/new', controller: :user, action: :new, alias: 'user_new'
  get 'user/edit', controller: :user, action: :edit, alias: 'user_edit'
  get 'user/list', controller: :user, action: :list, alias: 'user_list'
  get 'user/search', controller: :user, action: :search, alias: 'user_search'
  get 'user/login',controller: :user, action: :login, alias: 'user_login'

  get 'parking/new', controller: :parking, action: :new, alias: 'parking_new'
  get 'parking/edit', controller: :parking, action: :edit, alias: 'parking_edit'
  get 'parking/list', controller: :parking, action: :list, alias: 'parking_list'
  get 'parking/search', controller: :parking, action: :search, alias: 'parking_search'
  get 'parking/rent', controller: :parking, action: :rent, alias: 'parking_rent'


end
