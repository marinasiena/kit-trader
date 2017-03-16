Rails.application.routes.draw do
  root 'site#index'

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :clubs
  resources :users
  resources :kits
  resources :items

end
