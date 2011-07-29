class AddNameToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :name, :string
  end

  def self.down
    remove_column :teams, :name
  end
end
