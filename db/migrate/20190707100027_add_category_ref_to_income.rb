class AddCategoryRefToIncome < ActiveRecord::Migration[5.2]
  def change
    add_reference :incomes, :category, foreign_key: true
  end
end
