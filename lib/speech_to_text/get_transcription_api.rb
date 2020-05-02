require 'net/http'
require 'json'

id = 
uri = URI("https://eastus.api.cognitive.microsoft.com/speechtotext/v2.0/transcriptions/#{id}")
uri.query = URI.encode_www_form({
})

request = Net::HTTP::Get.new(uri.request_uri)
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['subscription_key']
# Request body
request.body = "{body}"

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body