class AddNameToFactors < ActiveRecord::Migration
  def self.up
    add_column :factors, :name, :text
  end

  def self.down
    remove_column :factors, :name
  end
end
