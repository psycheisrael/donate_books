require 'rails_helper'
RSpec.describe Book, type: :model do
  subject { Book.new( availability: "true", author: "John Smith", genre: "horror", title: "Looks", copies_available: 3, user: FactoryBot.create(:user))}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a availability" do
    subject.availability=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a author" do
    subject.author=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a genre" do
    subject.genre=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a title" do
    subject.title=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a copies_available" do
    subject.copies_available=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a user" do
    subject.user=nil
    expect(subject).to_not be_valid
  end
end
