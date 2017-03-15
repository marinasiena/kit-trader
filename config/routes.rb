Rails.application.routes.draw do
  resources :kits
  root 'site#index'
  
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :items
  resources :clubs
  resources :users

end
