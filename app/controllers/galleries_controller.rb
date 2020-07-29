class GalleriesController < ApplicationController
  before_action :authenticate_staff!
  before_action :set_gallery, only: [:destroy]

  def index
    @title = "Galleries"
    @galleries = Gallery.all
  end

  def new
    @title = "新規"
    @gallery = Gallery.new
  end

  def create
    if Gallery.create(gallery_params)
      redirect_to galleries_path
    else
      render :new
    end
  end

  def destroy
    if @gallery.destroy
      redirect_to galleries_path
      # 確認アラート的なやつ入れる
    end
  end

  private
  def gallery_params
    params.require(:gallery).permit(:image)
  end

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end
end
