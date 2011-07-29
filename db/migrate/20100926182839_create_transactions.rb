class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :team_id
      t.integer :year
      t.string :interest_type
      t.float :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
