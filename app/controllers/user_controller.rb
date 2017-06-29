class UserController < ApplicationController
  before_action :authorize, only: [:show]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      flash[:notice] = "Welcome"
    else
      redirect_to new_user_path
      flash[:alert] = "Sorry, try again."
    end
  end

  def edit
    @user  = User.find(params[:id])
    puts @user.inspect
  end

  def update
    puts params
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.bio = params[:user][:bio]
    @user.user_image = params[:user][:user_image]
    @user.user_id = @user.id
      if @user.save
        redirect_to user_path(@user)
      else
        p @user
        p @user.errors.full_messages
      end



  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
    def user_params
        params.require(:user).permit(:name, :email, :password, :bio, :user_image)
    end

    def authorize
        redirect_to root_path unless logged_in
  end
end
