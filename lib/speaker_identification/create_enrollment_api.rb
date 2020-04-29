require 'net/http'
require 'json'

module SpeakerIdentification
class Enrollment
    
def self.test
    puts "beginning test"


identificationProfileId = "492159e5-2562-48c0-a354-481ef6341f8d"
uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
uri.query = URI.encode_www_form({
    # Request parameters
    'shortAudio' => "{true}"
})

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'multipart/form-data'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# Request body
request.body = File.read('public/003.wav')

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end
# r = JSON.parse(response.header)
# puts r
puts response.body
puts response["content-type"]
puts response.code
puts response["operation-location"]
# response.each_header do |key, value|
#     p "#{key} => #{value}"
# end

end


end
end

# identificationProfileId = ???
# uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
# uri.query = URI.encode_www_form({
#     # Request parameters
#     'shortAudio' => "#{Rails.root}/public/ijlal.wav"
# })

# request = Net::HTTP::Post.new(uri.request_uri)
# # Request headers
# request['Content-Type'] = 'multipart/form-data'
# # Request headers
# request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# # Request body
# request.body = "{body}"

# response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
#     http.request(request)
# end

# puts response.body

# # '{boolean}'