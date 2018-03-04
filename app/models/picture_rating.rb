# == Schema Information
#
# Table name: picture_ratings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rater_id   :integer          not null
#  picture_id :integer          not null
#  rating     :integer
#

class PictureRating < ApplicationRecord



end
