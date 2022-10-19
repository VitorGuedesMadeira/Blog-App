class Post < ApplicationRecord
  after_save :update_posts_counter
  has_many :comments
  has_many :likes
  belongs_to :user

  def last_five_posts
    comments.last(5)
  end

  private

  def update_posts_counter
    user.update(posts_counter: user.posts.length)
  end
end
