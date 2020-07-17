class ApplicationController < ActionController::Base
  before_action :tax
  
  def tax
    @tax = Tax.find(1).tax
  end
end
