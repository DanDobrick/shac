class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include ActionController::RequestForgeryProtection
  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?
  respond_to :json

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :email])
  end


  def index
  end
  
end
