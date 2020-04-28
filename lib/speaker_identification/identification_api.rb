require 'net/http'

module SpeakerIdentification
    class Identification
        
    def self.test
        puts "beginning test"
    
    
identificationProfileId = "{35f500b0-40c1-4160-bf83-cf2a7f7e49e7,111f427c-3791-468f-b709-fcef7660fff9}"

uri = URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds={35f500b0-40c1-4160-bf83-cf2a7f7e49e7,111f427c-3791-468f-b709-fcef7660fff9}')
uri.query = URI.encode_www_form({
    # Request parameters
    'shortAudio' => "{false}"
})

request = Net::HTTP::Post.new(uri.request_uri)
# Request headers
request['Content-Type'] = 'application/octet-stream'
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# Request body
request.body = File.read('public/ijlal.wav')

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body

end

end


end