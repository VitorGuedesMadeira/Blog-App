class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts

  def last_three_posts
    posts.limit(3).order(created_at: :desc)
  end
end
