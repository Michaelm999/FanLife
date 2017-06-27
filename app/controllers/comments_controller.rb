class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @fandom = Fandom.find(params[:id])
    @user = User.find(params[:id])
    @fandom.comments.create{(
      content: params[:comment][:content]
      )}
      
      redirect_to fandom_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
