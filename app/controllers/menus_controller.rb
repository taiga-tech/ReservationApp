class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update]
  # before_action :tax_include, only: [:show]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menu_path(@menu.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
    # taxも編集できるようにする
  end

  def update
    if @menu.update(menu_params)
      redirect_to menu_path(set_menu)
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    # 削除前に確認のモーダル追加
  end

  private
  def set_menu
    @menu = Menu.find(params[:id])
  end

  def tax_include
    @tax_price = (@menu.price + @menu.price * @tax).ceil
  end

  # def tax_include_index
  # end

  def menu_params
    params.require(:menu).permit(:name, :price, :comment, category_ids: [])
  end
end
