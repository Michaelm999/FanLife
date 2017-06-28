class FandomsUserController < ApplicationController

  def create
    @fandom = Fandom.find(params[:id])
    current_user.fandoms << @fandom
    redirect_to user_path(current_user)
  end
  def destroy
    @fandom = Fandom.find(params[:id])
    current_user.fandoms.delete(@fandom)
    redirect_to user_path(current_user)
  end
end
