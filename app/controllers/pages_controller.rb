class PagesController < ApplicationController
  def home; end

  def index
    @incomes = Income.all
    current_balance_value = Balance.last.value
    current_expenses_value = Expense.sum(:value)
    assets_left = current_balance_value - current_expenses_value
    @current_balance = { 'Assets left' => assets_left, 'Expenses' => current_expenses_value }
  end
end
