class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :supervisor

  before_action :configure_permitted_parameters, if: :devise_controller?

  def supervisor 
		@supervisor = User.where(role: "supervisor")
	end


  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name, :id, :supervisor])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:role, :name, :id, :supervisor])
  end



  
end
