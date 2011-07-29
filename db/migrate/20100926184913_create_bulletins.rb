class CreateBulletins < ActiveRecord::Migration
  def self.up
    create_table :bulletins do |t|
      t.string :name
      t.text :description
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :bulletins
  end
end
