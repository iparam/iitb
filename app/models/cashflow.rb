# == Schema Information
#
# Table name: cashflows
#
#  id         :integer(4)      not null, primary key
#  roi        :float
#  project_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Cashflow < ActiveRecord::Base
 has_one :project_factor
 has_many :projects ,:through=>:project_factor
end
