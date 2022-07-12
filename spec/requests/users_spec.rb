require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get '/users' }
      it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
      it 'renders users index view' do
      expect(response).to render_template(:index)
    end
      it 'shows content in the view' do
      expect(response.body).to include('Welcome to my users page!')
    end
  end 
end
