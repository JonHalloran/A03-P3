# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  founder_id  :string           not null
#  description :text
#

require 'rails_helper'

RSpec.describe Group, type: :model do
  subject(:group) { Group.first }
  # p group

  it "has a founder " do
    # p group
    p group

    expect(group.founder.username).to eq("User0")
  end

  # it "has a membership" do
  #   larry_id = Executive.find_by_name("Larry Page").id
  #   expect(board.memberships.first.board_id).to eq(board.id)
  #   expect(board.memberships.first.member_id).to eq(larry_id)
  # end
  #
  # it "has a member" do
  #   expect(board.members.first.name).to eq("Larry Page")
  # end
  #
  # it "has a single exchange" do
  #   nasdaq = Exchange.find_by_name("NASDAQ")
  #   expect(board.exchange).to eq(nasdaq)
  # end
  #
  describe "validations" do
    it "require group to have a founder" do
      is_expected.to validate_presence_of(:founder).with_message(/must exist/)
    end
  end
end
