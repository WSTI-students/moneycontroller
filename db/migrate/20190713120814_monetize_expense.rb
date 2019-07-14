class MonetizeExpense < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :value, :integer
    add_monetize :expenses, :value
  end
end
