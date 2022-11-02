require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  describe 'test' do
    before(:each) do
      @user = User.create(name: 'Karla',
                          photo: 'https://picsum.photos/200',
                          bio: 'Brazilian pilot')
      visit users_path
    end

    it 'shows user name' do
      expect(page).to have_content(@user.name)
    end

    it 'shows the user photo' do
      expect(page.body).to include('https://picsum.photos/200')
    end

    it 'shows number of posts user has written' do
      expect(page.body).to include('Number of posts: 0')
    end

    it 'Redirect to post show page when a post is clicked' do
      click_link('Karla')
      expect(current_path).to eq(user_path(@user.id))
    end
  end
end
