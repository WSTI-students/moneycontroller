class AddStartdateAndEnddateToBudget < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :start_date, :datetime
    add_column :budgets, :end_date, :datetime
  end
end
