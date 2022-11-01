require 'rails_helper'

RSpec.describe 'posts/index.html.erb', type: :feature do
  before(:each) do
    @user = User.create(name: 'Vitor',
                        photo: 'https://picsum.photos/200',
                        bio: 'Brazilian pilot')
    @first_post = Post.create(user: @user, title: 'Hello 1', text: 'This is my first post')
    @last_post = Post.create(user: @user, title: 'Hello 4', text: 'This is my fourth post')
    Comment.create(post: @last_post, user: @user, text: 'This is the 1st comment on the 4th post')
    Comment.create(post: @last_post, user: @user, text: 'This is the 2st comment on the 4th post')
    Comment.create(post: @last_post, user: @user, text: 'This is the 3st comment on the 4th post')
    visit user_posts_path(@user)
  end

  it 'shows user name' do
    expect(page).to have_content(@user.name)
  end

  it 'shows the user photo' do
    expect(page.body).to include('https://picsum.photos/200')
  end

  it 'shows number of posts user has written' do
    expect(page.body).to include('Number of posts: ')
  end

  it 'shows number of comments a post has' do
    expect(page.body).to include('Comments: 3')
  end

  it 'shows number of likes a post has' do
    expect(page.body).to include('Likes: 0')
  end

  it 'shows the title of the post' do
    expect(page).to have_content(@last_post.title)
  end

  it 'shows the title of the post' do
    expect(page).to have_content(@last_post.title)
  end

  it 'shows part of a post body (This is my first post)' do
    expect(page).to have_content('This is my first post')
  end

  it 'shows the 1st comment on a post (This is the 1st comment on the 4th post)' do
    expect(page).to have_content('This is the 1st comment on the 4th post')
  end

  it 'shows part of a post body (This is my first post)' do
    expect(page).to have_content('This is my first post')
  end

  it 'Not to show the Pagination button' do
    expect(page.body).not_to include('Pagination')
  end

  it 'Redirect to post show page when a post is clicked' do
    click_link(@last_post.title)
    expect(current_path).to eq(user_post_path(@user, @last_post))
  end
end
