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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
