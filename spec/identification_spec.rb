require 'speaker_identification/identification_api'

describe "Identification" do

    let(:identification) {SpeakerIdentification::Identification.new}

    context "Creating an identification" do
        it "Check if the id is good" do
        expect(identification.testForIdentification).to eq("3bfad274-4d3b-45ee-a42d-399b10069576,3a1cf013-3ee1-4020-a144-22e40d7b7f4d,d43dd643-f51f-4f3c-9f23-c9285e597d19")
        end

        it "Check if the uri work" do
            expect(identification.testForUri).to_not eq(nil)
            end

        it "Test if we have the good request" do
            expect(identification.testRequest).to_not eq(nil)
            end

        it "Test if we have the good request content" do
            expect(identification.testRequestContent).to eq('application/octet-stream')
            end

        it "Test if we have the good request api key" do
            expect(identification.testRequestKey).to eq(ENV['Subscription_Key'])
            end

        it "Test if we have the good request body" do
            expect(identification.testRequestBody).to eq(File.read('public/convo3.wav'))
            end

        it "Let's see if we can test it. It's normal to have error code 401, because it work only in the terminal" do
            expect(identification.testing).to eq(nil)
            end
    end
end