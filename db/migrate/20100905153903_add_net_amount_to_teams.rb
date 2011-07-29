class AddNetAmountToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :net_amount, :float,:default=>1000000.0
  end

  def self.down
    remove_column :teams, :net_amount
  end
end
