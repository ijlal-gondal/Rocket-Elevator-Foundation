require 'net/http'

module SpeakerIdentification
    class Status
        
    def self.test
        puts "beginning test"


operationId = "b3d81d8d-ae96-4e5a-9e5f-6e4882afc43a"

uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/operations/#{operationId}")


request = Net::HTTP::Get.new(uri.request_uri)
# Request headers
request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
# Request body
request.body = "{body}"


response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
end

puts response.body

end

end


end