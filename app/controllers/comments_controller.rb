class CommentsController < ApplicationController
  # require permit strong params`
  def index
  end

  def show
  end

  def new
  end

  def create
    @fandom = Fandom.find(params[:id])
    @user = current_user
    @fandom.comments.create(
      params.require(:comment).permit(:content)
      )

      redirect_to fandom_path @fandom
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
