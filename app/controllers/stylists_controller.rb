class StylistsController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_stylist, only: [:show, :edit, :update, :destroy]

  def index
    @stylists = Stylist.where.not(name: "No Select")
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def show
  end

  def new
    @title = "新規スタイリスト登録"
    @stylist = Stylist.new
  end

  def create
    @title = "新規スタイリスト登録"
    @stylist = Stylist.new(stylist_params)
    if @stylist.save
      redirect_to stylist_path(@stylist)
    else
      render :new
    end
  end

  def edit
    @title = "スタイリスト情報編集"
  end

  def update
    if @stylist.update(stylist_params)
      redirect_to stylist_path(@stylist)
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
