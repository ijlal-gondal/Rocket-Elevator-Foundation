require 'speaker_identification/get_status_api'

describe "Get_status" do

    let(:status) {SpeakerIdentification::Status.new}

    context "Getting the status" do
        it "Checking the id" do
        expect(status.testForOperationId).to eq("b3d81d8d-ae96-4e5a-9e5f-6e4882afc43a")
        end

        it "Checking the uri " do
            expect(status.testForUri).to_not eq(nil)
            end

        it "Checking the request" do
            expect(status.testRequest).to_not eq(nil)
            end

        it "Checking the api key" do
            expect(status.testRequestKey).to eq(ENV['Subscription_Key'])
            end

        it "Checking the request body" do
            expect(status.testRequestBody).to eq("{body}")
            end

        it "Let's see if we can test it. It's normal to have error code 401, because it work only in the terminal" do
            expect(status.testing).to eq(nil)
            end
    end
end