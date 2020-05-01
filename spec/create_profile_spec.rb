require 'speaker_identification/create_profile_api'

describe "Profile" do

    let(:profile) {SpeakerIdentification::Profile.new}

        context "Creating a profile" do
            it "generates profiles for speaker recognition" do
            expect(profile.test).to eq("beginning test")
            end

            it "test if we have the good URI" do
            expect(profile.testUri).to eq(URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/identificationProfiles'))
            end

            it "test if we have the good request" do
                expect(profile.testRequest).to_not eq(nil)
                end

            it "test if we have the good request content" do
                expect(profile.testRequestContent).to eq('application/json')
                end
    
            it "test if we have the good request api key" do
                expect(profile.testRequestKey).to eq(ENV['Subscription_Key'])
                end
    
            it "test if we have the good request body" do
                expect(profile.testRequestBody).to eq({"locale":"en-us",}.to_json)
                end

            it "Let's see if we can test it. It's normal to have error code 401, because it work only in the terminal" do
                expect(profile.testing).to eq(nil)
                end
        end
end

