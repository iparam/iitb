# == Schema Information
#
# Table name: project_factors
#
#  id         :integer(4)      not null, primary key
#  project_id :integer(4)
#  factor_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class ProjectFactor < ActiveRecord::Base
 belongs_to :factor
 belongs_to :project
 validates_presence_of :project_id,:factor_id
 validates_uniqueness_of :factor_id,:scope=>:project_id
end
