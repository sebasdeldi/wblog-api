shared_examples 'update error examples' do
  it 'fails to update a post without description' do
    before_update = [post.description, post.status]
    http_request
    expect(before_update).to eq [post.reload.description, post.reload.status]
  end

  it 'responds with updated status' do
    http_request
    expect(response).to have_http_status(:precondition_failed)
  end

  it 'returns error messages' do
    http_request
    expect(response.body['error']).to be_present
  end
end
