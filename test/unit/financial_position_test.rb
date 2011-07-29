# == Schema Information
#
# Table name: financial_positions
#
#  id                          :integer(4)      not null, primary key
#  team_id                     :integer(4)
#  year                        :integer(4)
#  equity_from_last_year       :float
#  debt_from_last_year         :float
#  cash_inflow_during_year     :float
#  cash_outflow                :float
#  debt_repayment_during_year  :float
#  new_debt_issued_during_year :float
#  equity_at_end_of_year       :float
#  debt_at_end_of_year         :float
#  debt_to_equity_ratio        :float
#  interest_rate_for_next_year :float
#  wacc                        :float
#  created_at                  :datetime
#  updated_at                  :datetime
#

require 'test_helper'

class FinancialPositionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
