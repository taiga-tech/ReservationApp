class StylistsController < ApplicationController
  before_action :set_stylist, only: [:show, :edit, :update, :destroy]

  def index
    @stylists = Stylist.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
  end

  def new
    @stylist = Stylist.new
  end

  def create
    # default imageを設定する
    @stylist = Stylist.new(stylist_params)
    if @stylist.save
      redirect_to stylists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @stylist.update(stylist_params)
      redirect_to stylists_path
    else
      render :edit
    end
  end

  def destroy
    if @stylist.destroy
      redirect_to stylists_path
    end
  end

  private
  def set_stylist
    @stylist = Stylist.find(params[:id])
  end

  def stylist_params
    params.require(:stylist).permit(:name, :position, :comment, :image)
  end
end
