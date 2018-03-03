require 'rails_helper'

RSpec.describe User, type: :model do
subject(:user2) { User.find(2)}
subject(:user) {User.first}

  it "has a group" do
    # p :user.groups
    expect(user2.groups.first.description).to eq("Super Awesome Group")
  end

  it "has a membership" do
    expect(user2.memberships.first.member.username).to eq("User1")
  end

  it "has a founded group" do
    expect(user.founded.first.description).to eq("Super Awesome Group")
  end

end
