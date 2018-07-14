# == Schema Information
#
# Table name: areas
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  url        :text
#  red_id     :integer
#  white_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ApplicationRecord
  has_and_belongs_to_many:whites, :optional => true
  has_and_belongs_to_many:reds, :optional => true
  belongs_to:favouritewines, :optional => true
  
end
