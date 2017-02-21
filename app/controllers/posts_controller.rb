class PostsController < ApplicationController

  def index
    @pots = Post.all
  end

  def new
  end
  
  def create
    Post.create(name: "", image: "", text: "")
  end

end
