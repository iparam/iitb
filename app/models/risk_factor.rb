# == Schema Information
#
# Table name: risk_factors
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RiskFactor < ActiveRecord::Base
end
