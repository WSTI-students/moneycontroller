class PagesController < ApplicationController
  before_action :authenticate_user!

  def sign_in; end

  def home; end

  def index
    @incomes = Income.first(5)
    @expenses = Expense.first(5)
    @expenses_categories = Category.joins(:expenses).group('title').sum('expenses.value')
    current_expenses_value = Expense.sum(:value)
    current_budget_value = Budget.last.value_cents
    assets_left = current_budget_value - current_expenses_value
    @current_budget = { 'Assets left' => assets_left, 'Expenses' => current_expenses_value }
  end

  def show; end

  def edit; end
end
