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
 has_one :project_year
 belongs_to :project
 has_one :year,:through=>:project_year
delegate :year_no,:to=>:year,:allow_nil => true

end
