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

require 'test_helper'

class BidTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
