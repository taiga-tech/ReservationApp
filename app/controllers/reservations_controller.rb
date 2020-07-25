class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :set_other, only: [:new, :create, :edit]
  def index
    @reservations = Reservation.all
    # 管理者のみ
  end

  def new
    @reservation = Reservation.new
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # binding.pry
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  def show
  end

  def edit
    # 管理者のみ
  end

  def update
    if @reservation.update(reservation_params)
      # 管理者のみ
    else
      render :edit
    end
  end

  def destroy
    # 機能制限
    @reservation.destroy
  end

  private
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_other
    @stylists = Stylist.all#where(["name LIKE ? ", "%#{params[:keyword]}%"])
    @menus = Menu.all
  end

  def reservation_params
    params.require(:reservation)
    .permit(
            :name,
            :email,
            :tel,
            :date,
            :time,
            :request,
            :image,
            :stylist_id,
            :menu_id,
    )
  end
end
