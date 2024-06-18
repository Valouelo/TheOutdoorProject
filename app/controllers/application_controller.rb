class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :date_of_birth, :status])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :date_of_birth, :status])
  end
end
