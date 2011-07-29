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

require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
