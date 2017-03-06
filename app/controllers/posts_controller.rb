class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @yamaname = Yamaname.find(params[:yamaname_id])
  end
  
  def create
    Post.create(post_params)
    redirect_to controller: :yamanames, action: :index
  end

  private
  def post_params
    params.require(:post).permit(:image, :text).merge(yamaname_id: params[:yamaname_id], user_id: current_user.id)
  end
end
