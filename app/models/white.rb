# == Schema Information
#
# Table name: whites
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  image       :text
#  varietal_id :integer
#  url         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class White < ApplicationRecord
  belongs_to:varietals, :optional => true
  belongs_to:favouritewines, :optional => true
  has_many:area, :optional => true 
end
