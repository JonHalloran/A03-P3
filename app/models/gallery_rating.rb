# == Schema Information
#
# Table name: gallery_ratings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rater_id   :integer          not null
#  gallery_id :integer          not null
#  rating     :integer
#

class GalleryRating < ApplicationRecord
end
