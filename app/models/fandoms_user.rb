class FandomsUser < ApplicationRecord
  belongs_to :fandom
  belongs_to :user
end
def new
end

def create
  @favorites = current_user.fandoms
  @favorites << @fandom
  redirect_to user_path
end
def destroy
  current_user.fandoms = current_user.fandoms - @fandom
  redirect_to user_path
end
