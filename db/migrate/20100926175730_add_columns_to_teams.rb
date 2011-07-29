class AddColumnsToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :member1, :string
    add_column :teams, :member2, :string
    add_column :teams, :email_id_1, :string
    add_column :teams, :email_id_2, :string
    add_column :teams, :mobile_1, :string
    add_column :teams, :mobile_2, :string
    add_column :teams, :cash_available, :float,:default=>1000000.0
    add_column :teams, :loan_pending, :float
    add_column :teams, :interest_rate_applicable, :float
    add_column :teams, :is_active,:boolean,:default=>true


  end

  def self.down
    remove_column :teams, :member1
    remove_column :teams, :member2
    remove_column :teams, :email_id_1
    remove_column :teams, :email_id_2
    remove_column :teams, :mobile_1
    remove_column :teams, :mobile_2
    remove_column :teams, :cash_available
    remove_column :teams, :loan_pending
    remove_column :teams, :interest_rate_applicable
    remove_column :teams, :is_active

  end
end
