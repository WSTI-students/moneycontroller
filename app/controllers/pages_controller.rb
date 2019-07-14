class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @incomes = Income.first(5)
    @expenses = Expense.first(5)
    @expenses_categories = Category.joins(:expenses).group('title').sum('expenses.value')
    current_expenses_value = Expense.sum(:value)
    current_budget_value = Budget.last.value
    assets_left = current_budget_value - current_expenses_value
    @current_budget = { 'Assets left' => assets_left, 'Expenses' => current_expenses_value }
  end

  def welcome
    redirect_to action: 'index' if user_signed_in?
  end
end
