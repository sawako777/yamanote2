class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :avatar)
  end

end
