class YamanamesController < ApplicationController
  def index
    @yamanames = Yamaname.all
  end

  def show
    @yamaname = Yamaname.find(params[:id])
    @posts = Post.find(params[:id])
  end
  
end
