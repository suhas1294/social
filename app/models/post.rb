class Post < ApplicationRecord
  # has_many :comments ,dependant: destroy
  has_many :comments
  belongs_to :user
end
