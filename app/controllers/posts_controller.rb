class PostsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
  end
  
end
