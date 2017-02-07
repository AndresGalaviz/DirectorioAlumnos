class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :second_last_name, :contact_number, :next_of_kin, :next_of_kin_first_last_name, :next_of_kin_second_last_name, :next_of_kin_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :second_last_name, :contact_number, :next_of_kin, :next_of_kin_first_last_name, :next_of_kin_second_last_name, :next_of_kin_number])
  end

end
