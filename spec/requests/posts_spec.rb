require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /show' do
    it 'returns http success' do
      get users_path(1)
      expect(response).to have_http_status(:success)
    end
  end
end
