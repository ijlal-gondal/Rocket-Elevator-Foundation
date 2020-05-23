require 'net/http'
require 'json'

uri = URI('https://eastus.api.cognitive.microsoft.com/speechtotext/v2.0/transcriptions')
uri.query = URI.encode_www_form({
})

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'application/json'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['subscription_key']
# Request body
request.body = {
    "recordingsUrl": "https://contoso.com/mystoragelocation",
    "models": [],
    "locale": "en-US",
    "name": "Transcription using locale en-US",
    "description": "An optional description of the transcription.",
    "properties": {
      "AddWordLevelTimestamps": "True",
      "AddDiarization": "True",
      "AddSentiment": "True",
      "ProfanityFilterMode": "Masked",
      "PunctuationMode": "DictatedAndAutomatic"
    }
}.to_json

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body