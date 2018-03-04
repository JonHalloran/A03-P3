# == Schema Information
#
# Table name: galleries
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  creator_id  :integer          not null
#  name        :string
#  description :text
#

class Gallery < ApplicationRecord

end
