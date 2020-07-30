class HomeController < ApplicationController
  before_action :phone_num, only: :index

  def index
    @menus = Menu.all
    @categories = Category.all
    @info = Info.find(1)
    @stylists = Stylist.all
    @galleries = Gallery.all
    @stylists = Stylist.all
  end

  private
  def phone_num
    @phone = Phonelib.parse(Info.find(1).tel, :jp).national
  end
end
