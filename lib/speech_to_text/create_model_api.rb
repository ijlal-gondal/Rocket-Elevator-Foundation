require 'net/http'
require 'json'

uri = URI('https://eastus.api.cognitive.microsoft.com/speechtotext/v2.0/models')
uri.query = URI.encode_www_form({
})

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'application/json'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['subscription_key']
# Request body
request.body = {
    "modelKind": "Language",
    "baseModel": {
      "id": "f2842de0-fc16-4858-8391-e3fd1efb6980"
    },
    "datasets": [
      {
        "id": "a712c3ba-0e49-4059-a17f-0465426514c7"
      }
    ],
    "locale": "en-US",
    "name": "Language model",
    "description": "This is a language model definition"
}.to_json

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body