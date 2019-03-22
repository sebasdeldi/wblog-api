shared_examples 'error message examples' do
  it 'returns error messages' do
    http_request
    expect(response.body['error']).to be_present
  end
end
