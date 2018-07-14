# == Schema Information
#
# Table name: varietals
#
#  id         :bigint(8)        not null, primary key
#  red_id     :integer
#  white_id   :integer
#  image      :text
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Varietal < ApplicationRecord
  has_many:reds
  has_many:whites
end
