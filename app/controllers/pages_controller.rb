class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @incomes = Income.all
    current_balance_value = Balance.last.value
    current_expenses_value = Expense.sum(:value)
    assets_left = current_balance_value - current_expenses_value
    @current_balance = { 'Assets left' => assets_left, 'Expenses' => current_expenses_value }
  end

  def welcome
    redirect_to action: 'index' if user_signed_in?
  end
end
