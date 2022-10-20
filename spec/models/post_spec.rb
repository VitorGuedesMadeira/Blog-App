require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                posts_counter: 0)
  end

  before(:example) do
    @new_post = Post.create(user: subject, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                            likes_counter: 0)
  end

  context 'Validations should be working' do
    it 'ALL validations should return true' do
      expect(@new_post).to be_valid
    end
  end
end
