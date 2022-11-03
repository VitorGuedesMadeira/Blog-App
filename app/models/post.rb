class Post < ApplicationRecord
  after_save :update_posts_counter

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: { maximum: 250 }
  validates :text, presence: true, length: { maximum: 500 }
  validates :likes_counter, :comments_counter, numericality: { only_integer: true },
                                               comparison: { greater_than_or_equal_to: 0 }

  def last_five_posts
    comments.includes([:user]).last(5)
  end

  private

  def update_posts_counter
    user.update(posts_counter: user.posts.count)
  end
end
