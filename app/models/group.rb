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

class Group < ApplicationRecord
  belongs_to :founder,
    class_name: :User,
    foreign_key: :founder_id

  has_many :memberships,
          class_name: :GroupMembership,
          foreign_key: :group_id
end
