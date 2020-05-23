require 'net/http'
require 'json'

module SpeechToText
    class Dataset


        def self.test 

uri = URI('https://eastus.api.cognitive.microsoft.com/speechtotext/v2.0/datasets/upload')


request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'multipart/form-data'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['subscription_key']
# Request body
request.body = File.read('public/ijlal.wav')

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body
puts response.code
puts response["operation-location"]

end
end
end