class FandomsUser < ApplicationRecord
  belongs_to :fandom
  belongs_to :user
end
def new

end

def create
  @user.fandoms << @fandom
  redirect_to user_path
end
def destroy
  @user.fandoms = @user.fandoms- @fandom
  redirect_to fandom_path
end
