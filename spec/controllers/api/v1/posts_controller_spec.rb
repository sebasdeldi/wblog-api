require 'rails_helper'

describe Api::V1::PostsController, type: :controller do
  include_context 'Authenticated User'

  describe 'GET #index' do
    context 'When fetching all posts' do
      let!(:posts) { create_list(:post, 3) }

      before do
        get :index
      end

      it 'responses with the posts list json' do
        expected = ActiveModel::Serializer::CollectionSerializer.new(
          posts, serializer: Api::V1::PostSerializer
        ).to_json

        expect(response.body) =~ expected
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET #show' do
    context 'When fetching a specific post' do
      let!(:post) { create(:post) }

      before do
        get :show, params: { id: post.id }
      end

      it 'responses with the post json' do
        expect(response.body) =~ Api::V1::PostSerializer.new(post).to_json
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'POST #create' do
    subject(:http_request) { post :create, params: { post: posting } }
    let(:posting) { attributes_for(:post) }

    context 'When creating a valid post' do
      it 'creates a new post' do
        expect { http_request }.to change { Post.count }.by(1)
      end

      it 'responds with created status' do
        http_request
        expect(response).to have_http_status(:created)
      end
    end

    context 'When creating an invalid post' do
      let(:posting) { attributes_for(:post, title: nil) }
      include_examples 'error message examples'

      it "doesn't create a new post" do
        expect { http_request }.to change { Post.count }.by(0)
      end

      it 'responds with unprocessable_entity status' do
        http_request
        expect(response).to have_http_status(:precondition_failed)
      end
    end
  end

  describe 'PUT #update' do
    let(:post) { create(:post) }
    subject(:http_request) { put :update, params: { id: post.id, post: { description: desc, status: stat } } }

    context 'When updating a valid post' do
      let(:desc) { 'new description' }
      let(:stat) { 'free_access' }

      it 'updates a post' do
        before_update = [post.description, post.status]
        http_request
        expect(before_update).to_not eq [post.reload.description, post.reload.status]
      end

      it 'responds with updated status' do
        http_request
        expect(response).to have_http_status(201)
      end
    end

    context 'When updating a post with invalid description' do
      let(:desc) { ' ' }
      let(:stat) { 'free_access' }
      include_examples 'update error examples'
    end

    context 'When updating a post with invalid status' do
      let(:desc) { 'new description' }
      let(:stat) { ' ' }
      include_examples 'update error examples'
    end
  end
end
