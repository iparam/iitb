class CreateCashflows < ActiveRecord::Migration
  def self.up
    create_table :cashflows do |t|
      t.float :roi
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cashflows
  end
end
