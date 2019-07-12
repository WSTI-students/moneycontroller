class AddDefaultValueToBalance < ActiveRecord::Migration[5.2]
  def change
    change_column :balances, :value, :integer, default: 0, null: false
  end
end
