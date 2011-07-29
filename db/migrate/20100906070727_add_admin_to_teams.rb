class AddAdminToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :admin, :boolean,:default=>false
  end

  def self.down
    remove_column :teams, :admin
  end
end
