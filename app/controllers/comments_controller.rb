class CommentsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @fandom = Fandom.find(params[:id])
    @comment = @fandom.comments.create(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to fandom_path @fandom
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
