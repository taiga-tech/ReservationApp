class ApplicationController < ActionController::Base
  before_action :tax
  before_action :info

  def tax
    @tax = Tax.find(1).tax
  end

  def info
    @info = Info.find(1)
  end
end
