require 'rails_helper'

RSpec.describe Api::V1::XkcdRequestsController, type: :controller do
  include_context 'Authenticated User'

  describe 'GET #import' do
    subject(:http_request) { get :import, params: { comic_id: '34' } }

    context 'Import a comic from xkcd' do
      before do
        allow_any_instance_of(XkcdService).to receive(:comic)
          .and_return(load_fixtures_file('xkcd_response_success'))
      end

      it 'responds with 201 status' do
        http_request
        expect(response).to have_http_status(:created)
      end

      it 'creates a new post' do
        expect { http_request }.to change { Post.count }.by(1)
      end
    end
  end
end
