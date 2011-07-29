# == Schema Information
#
# Table name: risks
#
#  id         :integer(4)      not null, primary key
#  factor_id  :integer(4)
#  year_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Risk < ActiveRecord::Base
  belongs_to :year
  belongs_to :factor
end
