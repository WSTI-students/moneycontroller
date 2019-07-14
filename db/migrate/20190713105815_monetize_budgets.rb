class MonetizeBudgets < ActiveRecord::Migration[5.2]
  def change
    remove_column :budgets, :value, :integer
    add_monetize :budgets, :value
  end
end
