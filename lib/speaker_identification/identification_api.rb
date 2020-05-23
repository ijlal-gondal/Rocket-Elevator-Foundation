require 'net/http'

module SpeakerIdentification
    class Identification

        def self.test
            puts "beginning test"
        
        
        identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
        
        uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")
        
        
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Content-Type'] = 'application/octet-stream'
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
        # Request body
        request.body = File.read('public/convo3.wav')
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
            end
        
        puts response.body
        puts response.code
        puts response["operation-location"]
    
    
        end
        
        def testForIdentification
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
            identificationProfileIds
        end

        def testForUri
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")
            uri
        end

        def testRequest
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")
            request = Net::HTTP::Post.new(uri.request_uri)
            request
        end

        def testRequestContent
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")
            request = Net::HTTP::Post.new(uri.request_uri)
            request['Content-Type'] = 'application/octet-stream'
            request['Content-Type']
        end

        def testRequestKey
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")
            request = Net::HTTP::Post.new(uri.request_uri)
            request['Content-Type'] = 'application/octet-stream'
            request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
            request['Ocp-Apim-Subscription-Key']
        end

        def testRequestBody
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")
            request = Net::HTTP::Post.new(uri.request_uri)
            request['Content-Type'] = 'application/octet-stream'
            request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']

            request.body = File.read('public/convo3.wav')

            request.body
        end

        def testing        
            identificationProfileIds = "3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19"

            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identify?identificationProfileIds=#{identificationProfileIds}")


            request = Net::HTTP::Post.new(uri.request_uri)
            # Request headers
            request['Content-Type'] = 'application/octet-stream'
            # Request headers
            request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
            # Request body

            request.body = File.read('public/convo3.wav')


            response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
                http.request(request)
                response
            end


 

        end
    end
end