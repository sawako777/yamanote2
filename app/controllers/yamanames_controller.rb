class YamanamesController < ApplicationController
  def index
    @mountain_names = Yamaname.all
  end

  def show
  end
  
end
