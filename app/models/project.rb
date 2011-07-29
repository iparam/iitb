# == Schema Information
#
# Table name: projects
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  description    :text
#  cost           :float
#  no_of_years    :float
#  created_at     :datetime
#  updated_at     :datetime
#  cf0            :float
#  cf1            :float
#  cf2            :float
#  cf3            :float
#  cf4            :float
#  cf5            :float
#  show_cash_flow :boolean(1)      default(TRUE)
#

class Project < ActiveRecord::Base
  validates_presence_of :name,:cost
  validates_uniqueness_of :name
  has_many :bids,:dependent=>:destroy


  def highest_bid
    self.bids.order("bid_amount DESC").first
  end

  def highest_bid_amount
    bid = self.highest_bid
    bid.blank? ? "0.0" : bid.bid_amount
     
  end

  def highest_bid_amount_team_name
    bid = self.highest_bid
    bid.blank? ? "---" : bid.team.name
   
  end

  def add_winner
    bid = self.highest_bid
    if !bid.blank?
       bid.winner = true
       bid.team.cash_available = bid.team.cash_available-bid.bid_amount
      bid.save!
      bid.team.save!
    end
  end
end
