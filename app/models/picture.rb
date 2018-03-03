# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gallery_id :integer          not null
#  img        :string
#

class Picture < ApplicationRecord
end
