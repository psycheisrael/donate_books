require 'rails_helper' do 
  RSpec.describe User, type: :model do
    subject { User.new(full_name: "Jack Smith", email: "jsmith@sample.com" )}
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a full_name" do
      subject.full_name=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a last_name" do
      subject.last_name=nil
      expect(subject).to_not be_valid
    end
    it "is not valid if the email address doesn't have a @" do
      subject.email="!#$%^&*()"
      expect(subject).to_not be_valid
    end
    end
    it "returns the correct full_name" do
      expect(subject.full_name).to eq("Jack Smith")
    end
end
