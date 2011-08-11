# == Schema Information
#
# Table name: teams
#
#  id                       :integer(4)      not null, primary key
#  email                    :string(255)     default(""), not null
#  encrypted_password       :string(128)     default(""), not null
#  reset_password_token     :string(255)
#  remember_token           :string(255)
#  remember_created_at      :datetime
#  sign_in_count            :integer(4)      default(0)
#  current_sign_in_at       :datetime
#  last_sign_in_at          :datetime
#  current_sign_in_ip       :string(255)
#  last_sign_in_ip          :string(255)
#  confirmation_token       :string(255)
#  confirmed_at             :datetime
#  confirmation_sent_at     :datetime
#  created_at               :datetime
#  updated_at               :datetime
#  net_amount               :float           default(1000000.0)
#  admin                    :boolean(1)      default(FALSE)
#  name                     :string(255)
#  member1                  :string(255)
#  member2                  :string(255)
#  email_id_1               :string(255)
#  email_id_2               :string(255)
#  mobile_1                 :string(255)
#  mobile_2                 :string(255)
#  cash_available           :float           default(1000000.0)
#  loan_pending             :float
#  interest_rate_applicable :float
#  is_active                :boolean(1)      default(TRUE)
#
# Indexes
#
#  index_teams_on_email                 (email) UNIQUE
#  index_teams_on_reset_password_token  (reset_password_token) UNIQUE
#  index_teams_on_confirmation_token    (confirmation_token) UNIQUE
#

require 'email_format_validator'
class Team < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#,:confirmable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:net_amount,:admin,:email
  has_many :bids,:dependent=>:destroy
  has_many :transactions,:dependent=>:destroy
  has_many :financial_positions,:dependent=>:destroy

  validates :email_id_1,  :uniqueness => true, :allow_blank=>true,:email_format => true
  validates :email_id_2,  :uniqueness => true, :allow_blank=>true,:email_format => true
  

end
