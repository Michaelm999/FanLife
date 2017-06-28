class FandomsUser < ApplicationRecord
  belongs_to :fandom
  belongs_to :user
end

def new
end

def create
  current_user.fandoms << @fandom
  redirect_to user_path
end

def destroy
  current_user.fandoms == current_user.fandoms - @fandom
  redirect_to user_path
end
