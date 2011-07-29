class CreateBids < ActiveRecord::Migration
  def self.up
    create_table :bids do |t|
      t.integer :team_id
      t.integer :project_id
      t.float :bid_amount
      t.boolean :winner,:default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :bids
  end
end
