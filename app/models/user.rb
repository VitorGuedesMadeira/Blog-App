class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts
end
