Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'user'
  
  resources :products, only: [:index, :show, :create, :update, :destroy]
end
