# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
  has_many :founded,
    foreign_key: :founder_id,
    class_name: :Group

  has_many :memberships,
    foreign_key: :member_id,
    class_name: :GroupMembership

  has_many :groups,
    through: :memberships,
    source: :group
end
