# == Schema Information
#
# Table name: bids
#
#  id         :integer(4)      not null, primary key
#  team_id    :integer(4)
#  project_id :integer(4)
#  bid_amount :float
#  winner     :boolean(1)      default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

require 'bid_validator'
class Bid < ActiveRecord::Base
  belongs_to :team
  belongs_to :project
  validates_with BidValidator

 
end
