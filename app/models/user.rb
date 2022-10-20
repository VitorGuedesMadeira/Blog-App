class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts

  validates :name, :photo, :bio, presence: true, length: { in: 2..15 }
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0}

  def last_three_posts
    posts.limit(3).order(created_at: :desc)
  end
end
