class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  def show; end

  def index
    @expense = current_user.expenses.all
  end

  def new
    @expense = current_user.expenses.new
  end

  def create
    budget = current_user.budgets.last
    @expense = budget.expenses.new(expense_params_with_user)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to root_path, notice: 'Expense was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @expense.update(expense_params_with_user)
        format.html { redirect_to root_path, notice: 'Expense was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Expense was successfully deleted.' }
    end
  end

  private

  def set_expense
    @expense = current_user.expenses.find(params[:id])
  end

  def expense_params_with_user
    expense_params.merge(user: current_user)
  end

  def expense_params
    params.require(:expense).permit(:title, :value, :category_id)
  end
end
