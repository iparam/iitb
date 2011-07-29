# == Schema Information
#
# Table name: transactions
#
#  id            :integer(4)      not null, primary key
#  team_id       :integer(4)
#  year          :integer(4)
#  interest_type :string(255)
#  amount        :float
#  created_at    :datetime
#  updated_at    :datetime
#

class Transaction < ActiveRecord::Base
  belongs_to :team
  TRANSACTION_TYPE = ["Interest payment", "Principal repayment", "Issue of new debt"]
  after_create :update_team_credit

  def update_team_credit
    if self.interest_type == Transaction::TRANSACTION_TYPE[2]
      self.team.cash_available = self.team.cash_available+self.amount
      self.team.net_amount = self.team.net_amount - self.amount
    end
  end
end
