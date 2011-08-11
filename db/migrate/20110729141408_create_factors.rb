class CreateFactors < ActiveRecord::Migration
  def self.up
    create_table :factors do |t|
      
      t.timestamps
    end
  end

  def self.down
    drop_table :factors
  end
end
