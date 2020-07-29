class InfosController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_info, only: [:show, :edit, :update]

  # def index
  #   @title = "管理画面"
  # end

  def show
  end

  def edit
    @title = "店舗情報編集画面"
  end

  def update
    if @info.update(info_params)
      redirect_to info_path
    else
      render :edit
    end
  end

  private
  def info_params
    params.require(:info).permit(:code, :address, :tel, :weekday, :weekend, :holiday)
  end

  def set_info
    @info = Info.find(1)
  end

  # def phone_num
  #   @phone = Phonelib.parse(@info.tel, :jp).national
  # end
end
