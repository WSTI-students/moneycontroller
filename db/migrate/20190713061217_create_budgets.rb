class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :title
      t.integer :value

      t.timestamps
    end
  end
end
