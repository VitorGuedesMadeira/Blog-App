require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', posts_counter: 0) }

  context 'Validations should be working' do
    it 'ALL validations should return true' do
      expect(subject).to be_valid
    end

    it 'Name validation should return false' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'Name length should be lesser than 15 characters' do
      expect(subject.name).to satisfy { |n| n.length <= 15 }
    end

    it 'Posts counter should return a number' do
      expect(subject.posts_counter).to be_a_kind_of(Numeric)
    end
  end
end
