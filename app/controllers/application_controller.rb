class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?
  before_action :calculation
  before_action :info



  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def calculation
    @tax = Calculation.find(1).tax
    @discount = Calculation.find(1).discount
    @calculation = Calculation.find(1)
  end

  def info
    @info = Info.find(1)
    @phone = Phonelib.parse(@info.tel, :jp).national
  end
end
