class CreateProjectFactors < ActiveRecord::Migration
  def self.up
    create_table :project_factors do |t|
      t.integer :project_id
      t.integer :factor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_factors
  end
end
