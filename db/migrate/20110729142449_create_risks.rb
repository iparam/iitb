class CreateRisks < ActiveRecord::Migration
  def self.up
    create_table :risks do |t|
      t.integer :factor_id
      t.integer :year_id

      t.timestamps
    end
  end

  def self.down
    drop_table :risks
  end
end
