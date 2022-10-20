class Comment < ApplicationRecord
  after_save :update_comments_counter
  belongs_to :user
  belongs_to :post

  validates :text, presence: true, length: { maximum: 100 }

  private

  def update_comments_counter
    post.update(comments_counter: post.comments.count)
  end
end
