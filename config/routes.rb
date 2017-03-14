Rails.application.routes.draw do
  root 'site#index'
  
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :items
  resources :clubs
  resources :users

end
