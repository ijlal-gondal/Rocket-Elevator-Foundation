require 'speaker_identification/create_profile_api'

describe "Profile" do

    let(:profile) {SpeakerIdentification::Profile.new}

    context "Creating a profile" do
        it "generates profiles for speaker recogntion" do
        expect(profile.test).to eq("beginning test")
end

end
end

