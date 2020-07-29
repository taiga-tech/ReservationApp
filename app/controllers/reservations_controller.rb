class ReservationsController < ApplicationController
  before_action :authenticate_staff!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :set_other, only: [:new, :create, :edit]
  before_action :set_date, only: [:new, :create, :edit]
  before_action :user_phone, only: [:create, :show, :update]

  def index
    @reservations = Reservation.all
    @stylists = Stylist.all
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
    if @reservation.save
      render :create
    else
      render :new
    end
  end

  def show
    # @title = "show"
  end

  def edit
    # 管理者のみ
  end

  def update
    if @reservation.update(reservation_params)
      render :update
    else
      render :edit
    end
  end

  def destroy
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

  def set_date
    @today = DateTime.current#.days_since(1)
    @week = Date.current#.days_since(1)
    @date = Date.current
  end

  def user_phone
    @user_phone = Phonelib.parse(@reservation.tel, :jp).national
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
