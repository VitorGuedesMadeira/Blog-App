require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                posts_counter: 0)
  end

  before(:example) do
    @new_post = Post.create(id: 1, user: subject, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                            likes_counter: 0)

    @new_like = Like.create(user_id: 1, post_id: 1)
  end

  context 'Check associations' do
    it 'Should return user id' do
      expect(@new_like.user_id).to eq(1)
    end

    it 'Should return post id' do
      expect(@new_like.post_id).to eq(1)
    end
  end
end
