Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Static
  get 'static_pages/about'

  # Devise
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # Resources
  resources :vendors
  resources :users

  # Root
  root 'vendors#index'
end
