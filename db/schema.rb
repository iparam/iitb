# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110729132623) do

  create_table "bids", :force => true do |t|
    t.integer  "team_id"
    t.integer  "project_id"
    t.float    "bid_amount"
    t.boolean  "winner",     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bulletins", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cashflows", :force => true do |t|
    t.float    "roi"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "financial_positions", :force => true do |t|
    t.integer  "team_id"
    t.integer  "year"
    t.float    "equity_from_last_year"
    t.float    "debt_from_last_year"
    t.float    "cash_inflow_during_year"
    t.float    "cash_outflow"
    t.float    "debt_repayment_during_year"
    t.float    "new_debt_issued_during_year"
    t.float    "equity_at_end_of_year"
    t.float    "debt_at_end_of_year"
    t.float    "debt_to_equity_ratio"
    t.float    "interest_rate_for_next_year"
    t.float    "wacc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "cost"
    t.float    "no_of_years"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "cf0"
    t.float    "cf1"
    t.float    "cf2"
    t.float    "cf3"
    t.float    "cf4"
    t.float    "cf5"
    t.boolean  "show_cash_flow", :default => true
  end

  create_table "risk_factors", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "email",                                   :default => "",        :null => false
    t.string   "encrypted_password",       :limit => 128, :default => "",        :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                           :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "net_amount",                              :default => 1000000.0
    t.boolean  "admin",                                   :default => false
    t.string   "name"
    t.string   "member1"
    t.string   "member2"
    t.string   "email_id_1"
    t.string   "email_id_2"
    t.string   "mobile_1"
    t.string   "mobile_2"
    t.float    "cash_available",                          :default => 1000000.0
    t.float    "loan_pending"
    t.float    "interest_rate_applicable"
    t.boolean  "is_active",                               :default => true
  end

  add_index "teams", ["confirmation_token"], :name => "index_teams_on_confirmation_token", :unique => true
  add_index "teams", ["email"], :name => "index_teams_on_email", :unique => true
  add_index "teams", ["reset_password_token"], :name => "index_teams_on_reset_password_token", :unique => true

  create_table "transactions", :force => true do |t|
    t.integer  "team_id"
    t.integer  "year"
    t.string   "interest_type"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", :force => true do |t|
    t.integer  "year_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
