class LikesController < ApplicationController

def create
  style = Style.find(params[:style_id])
  like = current_user.likes.build(style_id: style.id)
  like.save
  redirect_to style
end

def destroy
  style = Style.find(params[:style_id])
  like = current_user.kikes.find_by(styke_id: style.id)
  like.destroy
  redirect_to style
end










# ここからlike機能
#   def create
#     @like = Like.create(user_id: current_user.id, style_id: params[:style_id])
#     @likes = Like.where(style_id: params[:style_id])
#   end

#   def destroy
#     @like = current_user.likes.find_by(style_id: params[:style_id])
#     @like.destroy
#     @likes = Like.where(style_id: params[:style_id])
#   end
# ここまでlike 機能
  # def create
  #   Like.create(create_params)
  #   redirect_to controller: :styles, action: :index
  # end

  # private
  # def create_params
  #   params.require(:like).permit(:like).merge(style_id: params[:style_id], name: current_user.name)
  # end

end
