class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @fandom = Fandom.find(params[:id])
    @user = current_user
    @fandom.comments.create({
      content: params[:comment][:content]
      })
      
      redirect_to fandom_path @fandom
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
