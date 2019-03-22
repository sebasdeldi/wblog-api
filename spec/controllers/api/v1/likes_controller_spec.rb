require 'rails_helper'

describe Api::V1::LikesController, type: :controller do
  include_context 'Authenticated User'

  describe 'POST #create' do
    subject(:http_request) { post :create, params: { like: like } }
    let(:like) { attributes_for(:like) }

    context 'When creating a valid like' do
      it 'creates a new like' do
        expect { http_request }.to change { Like.count }.by(1)
      end

      it 'responds with created status' do
        http_request
        expect(response).to have_http_status(:created)
      end
    end

    context 'When creating an invalid like' do
      let(:like) { attributes_for(:like, user_id: nil) }

      include_examples 'error message examples'

      it "doesn't create a new like" do
        expect { http_request }.to change { Like.count }.by(0)
      end

      it 'responds with unprocessable_entity status' do
        http_request
        expect(response).to have_http_status(:precondition_failed)
      end
    end
  end
end
