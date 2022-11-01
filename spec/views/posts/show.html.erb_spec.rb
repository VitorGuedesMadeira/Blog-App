require 'rails_helper'

RSpec.describe 'posts/show.html.erb', type: :feature do
  before(:each) do
    @user = User.create(name: 'Vitor',
                        photo: 'https://picsum.photos/200',
                        bio: 'Brazilian pilot')
    @any_post = Post.create(user: @user, title: 'Hello', text: 'This is any post')
    Comment.create(post: @any_post, user: @user, text: 'This is the 1st comment on the 4th post')
    Comment.create(post: @any_post, user: @user, text: 'This is the 2st comment on the 4th post')
    Comment.create(post: @any_post, user: @user, text: 'This is the 3st comment on the 4th post')
    visit user_post_path(@user, @any_post)
  end

  it 'I can see who wrote the post' do
    expect(page).to have_content(@user.name)
  end

  it 'shows number of comments a post has' do
    expect(page.body).to include('Comments: 3')
  end

  it 'shows number of likes a post has' do
    expect(page.body).to include('Likes: 0')
  end

  it 'shows the title of the post' do
    expect(page).to have_content(@any_post.title)
  end

  it 'shows the title of the post' do
    expect(page).to have_content(@any_post.title)
  end

  it 'shows part of a post body (This is any post)' do
    expect(page).to have_content('This is any post')
  end

  it 'shows the user name of a comment' do
    expect(page).to have_content('Vitor')
  end

  it 'shows the comment a user left' do 
    expect(page).to have_content('This is the 2st comment on the 4th post')
  end
end
