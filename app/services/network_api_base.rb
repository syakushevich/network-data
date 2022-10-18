module NetworkApiBase
  require 'net/http'
  require 'uri'
  require 'json'

  def call(url, key)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    begin
      json = JSON.parse(response.body)
      json.inject([]) { |result, hash| result << hash[key] }
    rescue JSON::ParserError
      'Invalid response'
    end
  end
end
