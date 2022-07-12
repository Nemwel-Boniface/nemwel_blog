require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    describe 'GET /index' do
      before(:example) { get '/users/1/posts' }
      it 'responds with the code 200' do
      expect(response).to have_http_status(:ok)
      end
      it "renders 'index' template" do
      expect(response).to render_template(:index)
      end
      it 'renders correct contents' do
      expect(response.body).to include('Welcome to my Posts page!')
      end
      end
  end
end
