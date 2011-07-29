# == Schema Information
#
# Table name: factors
#
#  id         :integer(4)      not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Factor < ActiveRecord::Base
 has_many :project_factors,:dependent=>:destroy
 has_many :projects,:through=>:project_factors
 has_many :risks
end
