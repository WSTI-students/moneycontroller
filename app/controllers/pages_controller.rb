class PagesController < ApplicationController
  before_action :authenticate_user!

  def sign_in; end

  def home; end

  def index
    @incomes = Income.first(5)
    @expenses = Expense.first(5)
    expenses_categories = Category.joins(:expenses).group('title').sum('expenses.value_cents')
    @expense_pie = expenses_categories.transform_values { |v| v / 100.to_f }
    current_expenses_value = Expense.sum(:value_cents)
    current_budget_value = current_user.budgets.last.value_cents
    assets_left = (current_budget_value - current_expenses_value) / 100.to_f
    @current_budget = { 'Assets left' => assets_left,
                        'Expenses' => current_expenses_value / 100.to_f }
  end

  def show; end

  def edit; end
end
