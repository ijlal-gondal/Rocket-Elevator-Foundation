require 'net/http'
require 'json'

module SpeakerIdentification
class Enrollment
    
def self.test
    puts "beginning test"


identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'multipart/form-data'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# Request body
request.body = File.read('public/011.wav')

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end
# r = JSON.parse(response.header)
# puts r
puts response.body
puts response["content-type"]
puts response.code
puts response["operation-location"]
response["content-type"]
response["operation-location"]
# response.each_header do |key, value|
#     p "#{key} => #{value}"
# end

end


end
end


