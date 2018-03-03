require 'rails_helper'

RSpec.describe Gallery, type: :model do
  subject(:gallery) { Gallery.first }
  # p gallery

  it "has a creator " do
    # p gallery
    expect(gallery.creator.username).to eq("User1")
  end

  #
  it "has a photographs" do
    expect(gallery.pictures.first.img).to eq("Picture0")
  end

  #
  describe "validations" do
    it "require gallery to have a creator" do
      is_expected.to validate_presence_of(:creator).with_message(/must exist/)
    end
  end
end
