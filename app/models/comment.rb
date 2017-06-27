class Comment < ApplicationRecord
  belongs_to :fandom
  belongs_to :user
end
