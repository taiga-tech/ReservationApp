class ManagementController < ApplicationController
  before_action :authenticate_staff!, only: :index

  def index
    @title = current_staff.name
  end
end
