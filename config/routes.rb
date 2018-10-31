Rails.application.routes.draw do
  get 'static_pages/about'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors
  root 'vendors#index'
end
