class CreateProjectYears < ActiveRecord::Migration
  def self.up
    create_table :project_years do |t|
      t.integer :year_id
      t.integer :project_id
      t.integer :cashflow_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_years
  end
end
