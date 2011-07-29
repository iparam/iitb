# == Schema Information
#
# Table name: years
#
#  id         :integer(4)      not null, primary key
#  year_no    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Year < ActiveRecord::Base
  has_many :project_years,:dependent=>:destroy
  has_many :projects,:through=>:project_years
has_many :risks
end
