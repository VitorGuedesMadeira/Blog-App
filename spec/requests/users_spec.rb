require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/index'
      expect(response).to have_http_status(:success)
    end

    it 'renders index template' do
      get '/'
      expect(response).to render_template(:index)
    end

    it 'should include correct placeholder' do
      get '/'
      expect(response.body).to include('Here is a list of ALL users')
    end
  end

  describe 'GET /show' do
    before(:each) do
      get '/users/show'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should return show' do
      expect(response).to render_template(:show)
    end

    it 'should include correct placeholder' do
      expect(response.body).to include('Here is a SINGLE user')
    end
  end
end
