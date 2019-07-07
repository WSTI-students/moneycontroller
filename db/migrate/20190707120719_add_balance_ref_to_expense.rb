class AddBalanceRefToExpense < ActiveRecord::Migration[5.2]
  def change
    add_reference :expenses, :balance, foreign_key: true
  end
end
