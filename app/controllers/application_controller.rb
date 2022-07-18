class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[index show movies_catalog search]
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource, except: %i[edit]

  private

  def layout_by_resource
    'authentication' if devise_controller?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[avatar name])
  end
end
