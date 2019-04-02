require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  let!(:users) {create_list(:user, 10)}
  let!(:user_id) {users.first.id}

  context 'user controller CRUD routes' do
    describe 'GET #index' do  
      it 'routes to #index' do
        get :index
        expect(response.status).to eq(200)
      end  
      
     it "routes /entry/new to entry#new" do
    { :get => "/api/v1/users" }.should route_to(
      :controller => "users",
      :action => "index"
    )
  end
    end


    # describe 'GET #show' do
    #   before { get '/api/v1/users/#{user_id' }
    #   context 'valid user tests'
    #     it 'returns status code of 200' do
    #       expect(response).to have_http_status(200)
    #     end

    #     it 'returns user' do
    #       expect(json).not_to be_empty
    #       expect(json['id']).to eq(user_id)
    #     end
    #   end

    #   context 'invalid user tests' do
    #     let(:user_id) {100}
    #       it 'returns status code 404' do
    #         expect(response).to have_http_status(404)
    #       end

    #       it 'returns a not found message' do
    #         expect(response.body).to match("{\"message\":\"Couldn't find User with 'id'=100\"}")
    #       end
    #   end
    # end
    # # describe 'POST #create' do
    #   let!(:valid_attributes) {{username: Faker::Internet.username(5), email: Faker::Internet.email}}
    #   context 'with valid attributes' do
    #     before { post '/api/v1/users', params: valid_attributes}

    #       it 'create a new user' do
    #        expect(json['username'].to eq(valid_attributes.username))
    #        expect(json['email'].to eq(valid_attributes.email))
    #       end

    #       it 'returns a status code of 201' do
    #         expect(response).to have_http_status(201)
    #       end
    #   end
      
    #   context 'without valid attributes' do 
    #     before { post '/api/v1/users', params[email: 'noone@example.com']}
    #     it 'returns status code 422' do
    #       expect(response).to have_http_status(422)
    #     end  

    #     it 'returns a validation failure message' do
    #       expect(response.body).to match(/Validation failed: username can't be blank/)
    #     end
    #   end
    # end
    
    # describe 'PUT #edit' do
    #   let(:valid_attributes) {{username: Faker::Internet.username(5) }}
    #   context 'with valid attributes' do
    #     before {put '/api/v1/users/#{user_id}', params: valid_attributes }
    #     it  'updates the user' do
    #      expect(reponse.body).to be_empty
    #     end
    #     it 'returns status code 204' do
    #       expect(response).to have_http_status(204)
    #     end  
    #   end
    # end 
    
    # describe 'DELETE #destroy' do
    #   before  {delete "/api/v1/users/#{user_id}"} 
    #   it 'returns status code 204' do 
    #     expect(response).to have_http_status(204)
    #   end
    # end
  end
end
