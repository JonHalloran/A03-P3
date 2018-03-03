# == Schema Information
#
# Table name: group_memberships
#
#  id         :integer          not null, primary key
#  member_id  :integer          not null
#  group_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GroupMembership < ApplicationRecord

  belongs_to :group

  belongs_to :member,
    class_name: :User,
    foreign_key: :member_id
end
