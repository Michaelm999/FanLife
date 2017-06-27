class UserController < ApplicationController
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
      redirect_to user_path(@user)

    else
      redirect_to new_user_path
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
    @user.save

    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private
    def user_params
        params.require(:user).permit(:name, :email, :password, :bio)
    end

    def authorize
        redirect_to login_path unless logged_in
  end
end
