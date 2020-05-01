require 'net/http'

module SpeakerIdentification

  class Profile
    def test
        "beginning test"
    end

    def testUri
      uri = URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles')
      uri
    end

    def testRequest
      uri = URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles')
      request = Net::HTTP::Post.new(uri.request_uri)
      request
    end

    def testRequestContent
      uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles")
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      request['Content-Type']
  end

  def testRequestKey
      uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles")
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'multipart/form-data'
      request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
      request['Ocp-Apim-Subscription-Key']
  end

  def testRequestBody
      uri = URI("https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles")
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'multipart/form-data'
      request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
      request.body = {"locale":"en-us",}.to_json
      request.body
  end

    def testing

      uri = URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles')


      request = Net::HTTP::Post.new(uri.request_uri)
      # Request headers
      request['Content-Type'] = 'application/json'
      # Request headers
      request['Ocp-Apim-Subscription-Key'] = ENV['Subscription_Key']
      # Request body
      request.body = {
        "locale":"en-us",
      }.to_json

      response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
          http.request(request)
          response
      end
    end
  end
end
