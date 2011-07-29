class CreateFinancialPositions < ActiveRecord::Migration
  def self.up
    create_table :financial_positions do |t|
      t.integer :team_id
      t.integer :year
      t.float :equity_from_last_year
      t.float :debt_from_last_year
      t.float :cash_inflow_during_year
      t.float :cash_outflow
      t.float :debt_repayment_during_year
      t.float :new_debt_issued_during_year
      t.float :equity_at_end_of_year
      t.float :debt_at_end_of_year
      t.float :debt_to_equity_ratio
      t.float :interest_rate_for_next_year
      t.float :wacc

      t.timestamps
    end
  end

  def self.down
    drop_table :financial_positions
  end
end
