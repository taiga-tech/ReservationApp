class ReservationsController < ApplicationController
  before_action :authenticate_staff!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :set_other, only: [:new, :create, :edit]
  before_action :set_date, only: [:index, :new, :create, :edit]
  before_action :user_phone, only: [:show, :update]
  before_action :price_calculation, only: [:show, :update]

  def index
    @reservations = Reservation.all
    @stylists = Stylist.all#.order(@reservations.date: :desc)
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
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      render :update
    else
      render :edit
    end
  end

  def destroy
    if @reservation.destroy
      redirect_to reservations_path
    end
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
    @today = Date.current#.days_since(1)
    @week = Date.current#.days_since(1)
    @date = Date.current
  end

  def user_phone
    @user_phone = Phonelib.parse(@reservation.tel, :jp).national
  end

  def price_calculation
    @price = @reservation.menu.price
    @discountPrice = @price * @discount
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
