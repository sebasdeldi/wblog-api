shared_examples 'error examples' do
  it 'returns error messages' do
    http_request
    expect(response.body['error']).to be_present
  end

  it "doesn't create a new post" do
    expect { http_request }.to change { Post.count }.by(0)
  end
end
