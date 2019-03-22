class XkcdService
  include HTTParty
  base_uri 'http://xkcd.com'

  def initialize(comic_id)
    @comic_id = comic_id
  end

  def comic
    response = self.class.get("/#{@comic_id}/info.0.json")

    raise Errors::ExternalRecordNotFoundException, 'external record not found' if response.to_json['server']

    response.to_json
  end
end
