class FandomsUser < ApplicationRecord
  belongs_to :fandom
  belongs_to :user
end
def new

end

def create
  if @fandom != @user.fandoms
  @user.fandoms << @fandom
  redirect_to user_path
else
  redirect_to fandom_path
end

def destroy
  @user.fandoms.id = nil
  redirect_to fandom_path
end
