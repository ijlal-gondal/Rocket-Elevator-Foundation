require 'net/http'

module SpeakerIdentification

  class Profile
  def test
      "beginning test"
  end
  def self.test
    puts "office"

uri = URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles')
uri.query = URI.encode_www_form({
})

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'application/json'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# Request body
request.body = {
  "locale":"en-us",
}.to_json

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body


  end

  end


end
