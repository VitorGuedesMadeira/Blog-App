require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) do
      get '/users/:user_id/posts'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render index' do
      expect(response).to render_template(:index)
    end

    it 'should return correct placeholder' do
      expect(response.body).to include('Here is a list of ALL posts from a single user')
    end
  end

  describe 'GET /show' do
    before(:each) do
      get '/users/:user_id/posts/:id'
    end

    it 'returns http success' do
      get '/users/:user_id/posts/:id'
      expect(response).to have_http_status(:success)
    end

    it 'should render show' do
      get '/users/:user_id/posts/:id'
      expect(response).to render_template(:show)
    end

    it 'should return correct placeholder' do
      expect(response.body).to include('Here is a SINGLE post for a given user')
    end
  end
end
