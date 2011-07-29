class AddColumnsToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :cf0, :float
    add_column :projects, :cf1, :float
    add_column :projects, :cf2, :float
    add_column :projects, :cf3, :float
    add_column :projects, :cf4, :float
    add_column :projects, :cf5, :float
    add_column :projects, :show_cash_flow, :boolean,:default=>true
  end

  def self.down
    remove_column :projects, :cf0
    remove_column :projects, :cf1
    remove_column :projects, :cf2
    remove_column :projects, :cf3
    remove_column :projects, :cf4
    remove_column :projects, :cf5
    remove_column :projects, :show_cash_flow
  end
end
