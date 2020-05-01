require 'net/http'
require 'json'

module SpeakerIdentification
    class Enrollment
    
        def testForIdentification
            identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
            identificationProfileId
        end

        def testForUri
            identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
            uri
        end

        def testRequest
            identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
            request = Net::HTTP::Post.new(uri.request_uri)
            request
        end

        def testRequestContent
            identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
            request = Net::HTTP::Post.new(uri.request_uri)
            request['Content-Type'] = 'multipart/form-data'
            request['Content-Type']
        end

        def testRequestKey
            identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
            request = Net::HTTP::Post.new(uri.request_uri)
            request['Content-Type'] = 'multipart/form-data'
            request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
            request['Ocp-Apim-Subscription-Key']
        end

        def testRequestBody
            identificationProfileId = "d43dd643-f51f-4f3c-9f23-c9285e597d19"
            uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles/#{identificationProfileId}/enroll")
            request = Net::HTTP::Post.new(uri.request_uri)
            request['Content-Type'] = 'multipart/form-data'
            request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
            request.body = File.read('public/011.wav')
            request.body
        end

        def testing


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
                response
            end
            # r = JSON.parse(response.header)
            # puts r
            
            # puts response["content-type"]
            # puts response.code
            # puts response["operation-location"]
            # response["content-type"]
            # response["operation-location"]
            # response.each_header do |key, value|
            #     p "#{key} => #{value}"
            # end
            # puts response.body
            # response
            end
            

     end
end


