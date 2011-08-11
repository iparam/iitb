class AddRiskValueToRisks < ActiveRecord::Migration
  def self.up
    add_column :risks, :risk_value, :float
  end

  def self.down
    remove_column :risks, :risk_value
  end
end
