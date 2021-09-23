class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_general_user!, except: %i[top about]
  before_action :set_q

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[name gender encrypted_password self_introduction birthdate])
  end

  def set_q
     @q = Submission.ransack(params[:q])
  end
end
