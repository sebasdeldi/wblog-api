describe XkcdService do
  describe '#comic' do
    context 'When open library request is successfull' do
      it 'returns the comic info' do
        xkcd_success_stub
        fixture = load_fixtures_file('xkcd_response_success')
        response = XkcdService.new('34').comic
        expect(response).equal? fixture
      end
    end

    context 'When library request is unsuccessfull' do
      it 'raises error when comic not found' do
        xkcd_fail_stub
        expect { XkcdService.new('xxx').comic }
          .to raise_error(Errors::ExternalRecordNotFoundException)
      end
    end
  end
end
