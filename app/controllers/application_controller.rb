class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?
  before_action :tax
  before_action :info



  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def tax
    @tax = Tax.find(1).tax
  end

  def info
    @info = Info.find(1)
    @phone = Phonelib.parse(@info.tel, :jp).national
  end
end
