class MenusController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :new_title, only: [:new, :create]
  # before_action :tax_include, only: [:show]

  def index
    @title = "メニュー一覧"
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @title = "メニュー編集画面"
    # taxも編集できるようにする
  end

  def update
    @title = "メニュー編集画面"
    if @menu.update(menu_params)
      redirect_to menu_path(set_menu)
    else
      render :edit
    end
  end

  def destroy
    if @menu.destroy
      redirect_to menus_path
    end
  end

  private
  def set_menu
    @menu = Menu.find(params[:id])
  end

  def tax_include
    @tax_price = (@menu.price + @menu.price * @tax).ceil
  end

  def new_title
    @title = "メニュー追加画面"
  end

  # def tax_include_index
  # end

  def menu_params
    params.require(:menu).permit(:name, :price, :comment, category_ids: [])
  end
end
