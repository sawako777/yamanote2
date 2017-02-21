class PostsController < ApplicationController

  def index
    @pots = Post.all
  end

  def new
  end
  
end
