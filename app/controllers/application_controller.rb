class ApplicationController < ActionController::Base
  before_action :devise_parameter_sanitizers, if: :devise_controller?

  private

  def devise_parameter_sanitizers
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
