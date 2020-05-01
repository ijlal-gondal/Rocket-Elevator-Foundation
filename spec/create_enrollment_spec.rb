require 'speaker_identification/create_enrollment_api'

describe "Enrollment" do

    let(:enrollment) {SpeakerIdentification::Enrollment.new}

        context "Creating an enrollment" do
            it "check if the identification id is good" do
            expect(enrollment.testForIdentification).to eq("d43dd643-f51f-4f3c-9f23-c9285e597d19")
            end

            it "check if the uri work well too" do
                expect(enrollment.testForUri).to_not eq(nil)
                end

            it "test if request is good" do
                expect(enrollment.testRequest).to_not eq(nil)
                end

            it "test if we have the good request content" do
                expect(enrollment.testRequestContent).to eq('multipart/form-data')
                end

            it "test if api key is good" do
                expect(enrollment.testRequestKey).to eq(ENV['Subscription_Key'])
                end

            it "test if we have the good request body" do
                expect(enrollment.testRequestBody).to eq(File.read('public/011.wav'))
                end

            it "It's normal to have error code 401, because it work only in the terminal" do
                expect(enrollment.testing).to eq(nil)
                end
        end
end