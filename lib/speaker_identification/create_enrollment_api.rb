require 'net/http'

module SpeakerIdentification
class Enrollment
    
def self.test
    puts "beginning test"


identificationProfileId = "35f500b0-40c1-4160-bf83-cf2a7f7e49e7"
uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
uri.query = URI.encode_www_form({
    # Request parameters
    'shortAudio' => "{false}"
})

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'multipart/form-data'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# Request body
request.body = File.read('public/ijlal.wav')

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body
puts response.header


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