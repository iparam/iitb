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

require 'test_helper'

class CashflowTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
