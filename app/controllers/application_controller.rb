class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [ :avatar, :first_name, :last_name, :username, :email, :password, :password_confirmation, :remember_me ]
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.permit :account_update, keys: [ :avatar, :first_name, :last_name, :username, :email, :password, :password_confirmation, :current_password ]
  end 
end
