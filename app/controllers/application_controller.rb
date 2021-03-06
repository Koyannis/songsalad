class ApplicationController < ActionController::Base
  helper_method :guest_present?, :current_guest
  before_action :configure_permitted_parameters, if: :devise_controller?

  def guest_present?
    current_guest.present?
  end

  def current_guest
    @current_guest ||= Guest.find_by(id: session[:guest_id])
  end


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
