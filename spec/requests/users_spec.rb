# require 'rails_helper'

# RSpec.describe 'Users', type: :request do
#   describe 'GET /index' do
#     before(:example) { get '/users' }
#     it 'returns http success' do
#       expect(response).to have_http_status(:success)
#     end
#     it 'renders users index view' do
#       expect(response).to render_template(:index)
#     end
#     it 'shows content in the view' do
#       expect(response.body).to include('List of all Users:')
#     end
#   end

#   describe 'GET /show' do
#     before(:example) { get users_path }
#     it 'responds with the code 400' do
#       expect(response).to have_http_status(:success)
#     end
#     it 'renders show view' do
#       expect(response).to render_template(locals: 'users/show')
#     end
# end
