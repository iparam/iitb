# == Schema Information
#
# Table name: bulletins
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  year        :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

class Bulletin < ActiveRecord::Base
end
