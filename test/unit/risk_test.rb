# == Schema Information
#
# Table name: risks
#
#  id         :integer(4)      not null, primary key
#  factor_id  :integer(4)
#  year_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  risk_value :float
#

require 'test_helper'

class RiskTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
