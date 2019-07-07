class AddBalanceRefToIncome < ActiveRecord::Migration[5.2]
  def change
    add_reference :incomes, :balance, foreign_key: true
  end
end
