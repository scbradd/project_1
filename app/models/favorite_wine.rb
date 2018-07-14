# == Schema Information
#
# Table name: favorite_wines
#
#  id         :bigint(8)        not null, primary key
#  red_id     :integer
#  white_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FavoriteWine < ApplicationRecord
  belongs_to:user, :optional => true
  has_and_belongs_to_many:varietals, :optional => true
  has_many:reds, :optional => true
  has_many:whites, :optional => true
  has_many:areas, :optional => true
end
