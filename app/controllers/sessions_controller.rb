class SessionsController < ApplicationController
  def new
  end

  def create
    #first try to find user by email in the db
    @user = User.find_by_email(params[:login][:email])
    # if user does exist AND they put int he right password:
    if @user && @user.authenticate(params[:login][:password])
      #generate cookie for the user & redirect them
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      flash[:notice] = "Welcome"
    else
      redirect_to login_path
      flash[:alert] = "Sorry, try again."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
