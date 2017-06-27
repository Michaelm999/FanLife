class FandomsUser < ApplicationRecord
  belongs_to :fandom
  belongs_to :user
end
def new

end

def create
    if @user.fandoms != @fandom
      @user.fandoms << @fandom
      redirect_to user_path
    else
      redirect_to fandom_path
    end
end
def destroy
  @user.fandoms.id = @user.fandoms.id - @fandom
  redirect_to fandom_path
end
