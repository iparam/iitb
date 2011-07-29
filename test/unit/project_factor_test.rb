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

require 'test_helper'

class ProjectFactorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
