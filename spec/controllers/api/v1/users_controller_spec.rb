require 'rails_helper'

describe Api::V1::UsersController, type: :controller do
  include_context 'Authenticated User'

  describe 'GET #index' do
    context 'When fetching all users' do
      let!(:users) { create_list(:user, 3) }

      before do
        get :index, params: { id: user.id }
      end

      it 'responses with the users list json' do
        expected = ActiveModel::Serializer::CollectionSerializer.new(
          users, serializer: Api::V1::UserSerializer
        ).to_json

        expect(response.body) =~ expected
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET #show' do
    context 'When fetching a specific user' do
      let!(:user) { create(:user) }

      before do
        get :show, params: { id: user.id }
      end

      it 'responses with the user json' do
        expect(response.body) =~ Api::V1::UserSerializer.new(user).to_json
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
