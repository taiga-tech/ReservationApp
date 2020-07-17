class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :phone_num, only: [:show]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    if @user = User.create(user_params)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def phone_num
    @phone = Phonelib.parse(@user.tel, :jp).national
  end

  def user_params
    params.require(:user).permit(:name, :email, :tel, :request, :image)
  end
end
