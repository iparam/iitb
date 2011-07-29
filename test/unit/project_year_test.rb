# == Schema Information
#
# Table name: project_years
#
#  id          :integer(4)      not null, primary key
#  year_id     :integer(4)
#  project_id  :integer(4)
#  cashflow_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class ProjectYearTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
