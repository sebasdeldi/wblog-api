require 'rails_helper'

describe Api::V1::ReblogsController, type: :controller do
  include_context 'Authenticated User'

  describe 'POST #create' do
    subject(:http_request) { post :create, params: { reblog: reblog } }
    let(:reblog) { attributes_for(:reblog) }

    context 'When creating a valid reblog' do
      it 'creates a new reblog' do
        expect { http_request }.to change { Reblog.count }.by(1)
      end

      it 'responds with created status' do
        http_request
        expect(response).to have_http_status(:created)
      end
    end

    context 'When creating an invalid reblog' do
      let(:reblog) { attributes_for(:reblog, user_id: nil) }

      include_examples 'error message examples'

      it "doesn't create a new like" do
        expect { http_request }.to change { Reblog.count }.by(0)
      end

      it 'responds with unprocessable_entity status' do
        http_request
        expect(response).to have_http_status(:precondition_failed)
      end
    end
  end
end
