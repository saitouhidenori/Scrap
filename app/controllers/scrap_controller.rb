class ScrapController < ApplicationController

  def index
    @styles = Style.includes(:designer).order("id ASC").page(params[:page]).per(20)
    # @styles = Style.order("id ASC").page(params[:page]).per(20)
    # @likes = Like.where(style_id: params[:id])
    # 上記コードはスタイルビューコードの為show html erb all lengthで使用
  end

 def index2
    # @style = Style.includes(:designer).order("id ASC").page(params[:page]).per(20)
    # @styles = Style.order("id ASC").page(params[:page]).per(20)
    # @likes = Like.where(style_id: params[:id])
    # 上記コードはスタイルビューコードの為show html erb all lengthで使用
  end

  def new
    @style = Style.new
  end

  def show
    @styles = Style.order("id ASC").page(params[:page]).per(20)
    # binding.pry
    @style = Style.find(params[:style_id])
    # @likes = Like.where(style_id: params[:id])
  end


  # def new
  # end

  # def show
  #   @styles = Style.order("id ASC").page(params[:page]).per(20)
  # end

  def create
    Style.create(designer: style_params[:designer], shop_name: style_params[:shop_name], image: style_params[:image], designer_id: current_designer.id)
  end

  def destroy
    style = Style.find(params[:id])
    if style.designer_id == current_designer.id
      style.destroy
    end
  end

  private
  def style_params
    params.permit(:designer, :shop_name, :image)
  end

end