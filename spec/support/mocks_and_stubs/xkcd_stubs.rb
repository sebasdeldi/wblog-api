def xkcd_success_stub
  stub_request(:get, 'http://xkcd.com/34/info.0.json')
    .to_return(
      body: File.read(Rails.root.join('spec', 'support',
                                      'fixtures', 'xkcd_response_success.json')),
      headers: { 'Content-Type': 'application/json' }
    )
end

def xkcd_fail_stub
  stub_request(:get, 'http://xkcd.com/xxx/info.0.json')
    .to_return(
      body: File.read(Rails.root.join('spec', 'support',
                                      'fixtures', 'xkcd_response_fail.json')),
      headers: { 'Content-Type': 'application/json' }
    )
end
